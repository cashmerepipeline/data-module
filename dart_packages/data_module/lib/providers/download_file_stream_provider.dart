import 'package:data_module/file_download_stream_controller.dart';
import 'package:grpc/grpc.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'download_file_result.dart';
import 'download_file_state_enum.dart';
import 'download_file_state_provider_arg.dart';

final downloadFileStreamProvider =
    StreamProvider.autoDispose.family<DownloadFileResult, DownloadFileStateProviderArg>((ref, arg) async* {
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

  yield DownloadFileResult(
    state: DownloadFileStateEnum.completed,
    progress: 1,
    data: result,
  );
});
