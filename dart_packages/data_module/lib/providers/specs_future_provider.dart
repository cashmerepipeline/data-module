import 'package:bson/bson.dart';
import 'package:cashmere_core/grpc_call.dart';
import 'package:grpc/grpc.dart';

import 'package:data_module/protocols/specs.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'specses_future_provider_arg.dart';

final specsesFutureProvider =
    FutureProvider.autoDispose.family<List<Map<String, dynamic>>, SpecsesFutureProviderArg>((ref, arg) async {
  final request = ListSpecsRequest(
    manageId: arg.manageId,
    entityId: arg.entityId,
  );

  final response = await arg.stubCall(request, options: CallOptions(metadata: arg.medadata));

  return response.specses.map((e) => BsonCodec.deserialize(BsonBinary.from(e))).toList();
});
