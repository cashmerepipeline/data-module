import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/specs.pb.dart';

class SpecsesFutureProviderArg {
  final String manageId;
  final String entityId;
  final GrpcCall<ListSpecsRequest, ListSpecsResponse> stubCall;
  final Map<String, String> medadata;

  SpecsesFutureProviderArg({
    required this.manageId,
    required this.entityId,
    required this.stubCall,
    required this.medadata,
  });
}
