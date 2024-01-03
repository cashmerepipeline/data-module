import 'package:bson/bson.dart';
import 'package:data_module/protocols/specs.pb.dart';
import 'package:data_module/providers/specs_datas_provider_arg.dart';
import 'package:data_module/providers/specses_notifier_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

Future<List<Map<String, dynamic>>> fetchSpecsDatas(SpecsDatasProviderArg arg) async {
  final request = ListSpecsDataRequest(
    specsId: arg.specsId,
  );

  final response = await arg.listDataCall(request, options: CallOptions(metadata: arg.metadata));

  final specsMap = response.data.map((e) => BsonCodec.deserialize(BsonBinary.from(e))).toList();
  debugPrint("$specsMap");

  return specsMap;
}
