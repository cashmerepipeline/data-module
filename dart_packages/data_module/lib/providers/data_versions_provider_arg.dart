import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/version.pb.dart';

class DataVersionsProviderArg {
  final String specsId;
  final String dataId;
  final GrpcCall<ListDataVersionsRequest, ListDataVersionsResponse> stubCall;
  final Map<String, String> metadata;

  DataVersionsProviderArg({
    required this.specsId, 
    required this.dataId,
    required this.stubCall,
    required this.metadata,
  });
}
