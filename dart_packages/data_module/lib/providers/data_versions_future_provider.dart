import 'package:data_module/providers/data_versions_provider_arg.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

import 'package:data_module/protocols/version.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dataVersionsFutureProvider =
    FutureProvider.autoDispose.family<List<Version>, DataVersionsProviderArg>((ref, arg) async {
  final request = ListDataVersionsRequest(
    specsId: arg.specsId,
    dataId: arg.dataId,
  );

  final response = await arg.stubCall(request, options: CallOptions(metadata: arg.metadata));
  debugPrint("${response.versions}");
  return response.versions;
});
