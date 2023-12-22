import 'package:grpc/grpc.dart';

import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/version.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

final specsVersionsFutureProvider =
    FutureProvider.autoDispose.family<List<Version>, SpecsVersionsProviderArg>((ref, arg) async {
  final request = ListSpecsVersionsRequest(
    specsId: arg.specsId,
  );

  final response = await arg.stubCall(request, options: CallOptions(metadata: arg.metadata));
  return response.versions;
});
