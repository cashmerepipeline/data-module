import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/version.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'specs_versions_provider_arg.dart';

final specsVersionsFutureProvider =
    FutureProvider.autoDispose.family<List<Version>, SpecsVersionsProviderArg>((ref, arg) async {
  final request = ListSpecsVersionsRequest(
    specsId: arg.specsId,
  );

  final response = await arg.stubCall(request, options: CallOptions(metadata: arg.metadata));
  debugPrint("${response.versions}");
  return response.versions;
});
