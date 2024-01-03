import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/file_info.pb.dart';
import 'package:data_module/protocols/file_transfer.pb.dart';
import 'package:data_module/protocols/version.pb.dart';

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
