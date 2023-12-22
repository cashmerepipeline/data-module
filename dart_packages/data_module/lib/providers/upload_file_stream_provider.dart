import 'package:grpc/grpc.dart';

import 'package:data_module/file_upload_stream_controller.dart';
import 'package:data_module/protocols/file_transfer.pb.dart';

import 'package:cashmere_core/grpc_call.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum UploadFileStateEnum {
  preparing,
  uploading,
  completed,
  failed,
}

class UploadFileResult {
  final UploadFileStateEnum state;
  // 0-1
  final double progress;

  UploadFileResult({
    required this.state,
    required this.progress,
  });
}

class UploadFileStateProviderArg {
  final String specsId;
  final String dataId;
  final String stage;
  final String version;
  final String subPath;
  final String filePath;
  final BiStreamGrpcCall<UploadFileToVersionRequest, UploadFileToVersionResponse> stubCall;
  final Map<String, String> metadata;

  UploadFileStateProviderArg({
    required this.specsId,
    required this.dataId,
    required this.stage,
    required this.version,
    required this.subPath,
    required this.filePath,
    required this.stubCall,
    required this.metadata,
  });
}

final uploadFileStreamProvider = StreamProvider.autoDispose.family<UploadFileResult, UploadFileStateProviderArg>((ref, arg) async* {
  final streamController = UploadFileStreamController(
    specsId: arg.specsId,
    dataId: arg.dataId,
    stage: arg.stage,
    version: arg.version,
    filePath: arg.filePath,
  );

  streamController.sendFirst();
  final response = arg.stubCall(streamController.stream, options: CallOptions(metadata: arg.metadata));

  // 发送服务器要求的包，数据续传
  await for (var value in response) {
    if (value.nextChunkIndex > 0) {
      yield UploadFileResult(
        state: UploadFileStateEnum.uploading,
        progress: value.nextChunkIndex.toInt() / streamController.totalChuncks.toInt(),
      );
      streamController.sendNext(value.nextChunkIndex);
    }

    // 到0结束
    if (value.nextChunkIndex == 0) {
      streamController.sendLast();
      streamController.close();
    }
  }

  yield UploadFileResult(
    state: UploadFileStateEnum.completed,
    progress: 1,
  );
});
