import 'package:bson/bson.dart';
import 'package:data_module/protocols/specs.pb.dart';
import 'package:data_module/providers/specses_notifier_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

Future<List<Map<String, dynamic>>> fetchSpecses(SpecsesProviderArg arg) async {
  final request = ListSpecsRequest(
    manageId: arg.manageId,
    entityId: arg.entityId,
  );

  final response = await arg.stubCall(request, options: CallOptions(metadata: arg.medadata));

  final specsMap = response.specses.map((e) => BsonCodec.deserialize(BsonBinary.from(e))).toList();
  debugPrint("$specsMap");

  return specsMap;
}
