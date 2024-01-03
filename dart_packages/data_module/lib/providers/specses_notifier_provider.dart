import 'package:bson/bson.dart';
import 'package:cashmere_core/ids/general_field_ids.dart';
import 'package:data_module/views/specs_view.dart';
import 'package:grpc/grpc.dart';

import 'package:cashmere_core/grpc_call.dart';
import 'package:data_module/protocols/specs.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:data_module/fetches/fetch_specses.dart';

class SpecsesAsyncNotifier extends AutoDisposeFamilyAsyncNotifier<List<Map<String, dynamic>>, SpecsesProviderArg> {
  SpecsesAsyncNotifier() : super();

  Future<void> refresh(WidgetRef ref) async {
    final speses = await fetchSpecses(arg);
    state = AsyncValue.data(speses);
  }

  SpecsView getSpecs(String specsId) {
    final entity = state.value!.firstWhere((element) => element[ID_FIELD_ID.toString()] == specsId);
    return SpecsView.fromMap(entity);
  }

  @override
  Future<List<Map<String, dynamic>>> build(SpecsesProviderArg arg) async {
    return await fetchSpecses(arg);
  }
}

class SpecsesProviderArg {
  final String manageId;
  final String entityId;
  final GrpcCall<ListSpecsRequest, ListSpecsResponse> stubCall;
  final Map<String, String> medadata;

  SpecsesProviderArg({
    required this.manageId,
    required this.entityId,
    required this.stubCall,
    required this.medadata,
  });
}

final specsesNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<SpecsesAsyncNotifier, List<Map<String, dynamic>>, SpecsesProviderArg>(SpecsesAsyncNotifier.new);
