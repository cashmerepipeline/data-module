import 'package:data_module/file_download_stream_controller.dart';
import 'package:data_module/protocols/file_info.pb.dart';
import 'package:data_module/protocols/file_transfer.pb.dart';
import 'package:grpc/grpc.dart';

import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/version.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum DownloadFileStateEnum {
  preparing,
  downloading,
  completed,
  failed,
}

class DownloadFileResult {
  final DownloadFileStateEnum state ;
  // 0-1
  final double progress;
  final List<int> data;

  DownloadFileResult(
    {
      required this.state,
      required this.progress,
      required this.data,
    }
  );
}

class DownloadFileStateProviderArg {
  final Version version;
  final String subPath;
  final FileInfo fileInfo;
  final BiStreamGrpcCall<DownloadFileFromVersionRequest, DownloadFileFromVersionResponse> stubCall;
  final Map<String, String> metadata;

  DownloadFileStateProviderArg({
    required this.version,
    required this.subPath,
    required this.fileInfo,
    required this.stubCall,
    required this.metadata,
  });
}

final downloadFileStreamProvider = StreamProvider.family<DownloadFileResult, DownloadFileStateProviderArg>((ref, arg) async* {
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
    yield DownloadFileResult(state: DownloadFileStateEnum.downloading, progress: value.chunk.length / arg.fileInfo.size.toInt(), data: []);
    streamController.sendNext(value.chunkIndex + 1);
  }

  streamController.close();
  
  yield DownloadFileResult(
    state: DownloadFileStateEnum.completed, 
    progress: 1,
    data: result,
  );
});
