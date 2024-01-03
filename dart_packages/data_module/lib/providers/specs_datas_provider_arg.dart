import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/data.pb.dart';
import 'package:data_module/protocols/specs.pb.dart';

class SpecsDatasProviderArg {
  final String specsId;
  final GrpcCall<ListSpecsDataRequest, ListSpecsDataResponse> listDataCall;
  final GrpcCall<NewDataRequest, NewDataResponse> newDataCall;
  final Map<String, String> metadata;

  SpecsDatasProviderArg({
    required this.specsId,
    required this.listDataCall,
    required this.newDataCall,
    required this.metadata,
  });
}
