import 'dart:io';

import 'package:data_module/file_download_stream_controller.dart';
import 'package:grpc/grpc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'download_file_result.dart';
import 'download_file_state_enum.dart';
import 'download_file_state_provider_arg.dart';

final downloadFileStreamProvider =
    StreamProvider.autoDispose.family<DownloadFileResult, DownloadFileStateProviderArg>((ref, arg) async* {
  // 查看缓存文件是否存在
  final md5 = arg.fileInfo.md5;
  final cacheDir = await getApplicationCacheDirectory();
  final cacheFile = File('${cacheDir.path}/$md5');
  
  if (cacheFile.existsSync()) {
    final buf = cacheFile.readAsBytesSync();
    yield DownloadFileResult(
      data: buf,
      progress: 1.0,
      state: DownloadFileStateEnum.completed,
    );
    return;
  }

  final streamController = DownloadFileStreamController(
    arg.version.specsId,
    arg.version.dataId,
    arg.version.stage,
    arg.version.version,
    arg.subPath,
    arg.fileInfo.fileName,
  );

  streamController.sendFirst();
  final response = arg.stubCall(streamController.stream, options: CallOptions(metadata: arg.metadata));
  final result = <int>[];
  bool first = true;
  await for (var value in response) {
    if (value.chunkIndex == 0) {
      if (first) {
        streamController.sendNext(value.chunkIndex + 1);
        first = false;
        continue;
      } else {
        streamController.sendLast();
        break;
      }
    }
    result.addAll(value.chunk);
    yield DownloadFileResult(
        state: DownloadFileStateEnum.downloading, progress: value.chunk.length / arg.fileInfo.size.toInt(), data: []);
    streamController.sendNext(value.chunkIndex + 1);
  }

  streamController.close();
  
  // 写入缓存
  cacheFile.writeAsBytesSync(result);

  yield DownloadFileResult(
    state: DownloadFileStateEnum.completed,
    progress: 1,
    data: result,
  );
});
