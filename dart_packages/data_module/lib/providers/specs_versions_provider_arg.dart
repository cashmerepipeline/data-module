import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/version.pb.dart';

class SpecsVersionsProviderArg {
  final String specsId;
  final GrpcCall<ListSpecsVersionsRequest, ListSpecsVersionsResponse> stubCall;
  final Map<String, String> metadata;

  SpecsVersionsProviderArg({
    required this.specsId,
    required this.stubCall,
    required this.metadata,
  });
}
