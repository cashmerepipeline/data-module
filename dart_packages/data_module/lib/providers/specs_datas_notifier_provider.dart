import 'dart:async';
import 'package:data_module/field_ids.dart';
import 'package:grpc/grpc.dart';

import 'package:data_module/fetches/fetch_specs_datas.dart';
import 'package:data_module/new_views/new_data_view.dart';
import 'package:data_module/providers/specs_datas_provider_arg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SpecsDatasAsyncNotifier
    extends AutoDisposeFamilyAsyncNotifier<List<Map<String, dynamic>>, SpecsDatasProviderArg> {
  Future<String> newData(NewDataView newDataView) async {
    final response = await arg.newDataCall(
      newDataView.toRequest(),
      options: CallOptions(metadata: arg.metadata),
    );

    refresh();

    return response.result;
  }

  void refresh() async {
    state = AsyncValue.data(await fetchSpecsDatas(arg));
  }

  Map<String, dynamic>? getDataByMark(String mark) {
    return state.value?.where((element) => element[DATAS_MARK_FIELD_ID.toString()] == mark).first;
  }


  @override
  Future<List<Map<String, dynamic>>> build(SpecsDatasProviderArg arg) async {
    return await fetchSpecsDatas(arg);
  }
}

final specsDatasNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<SpecsDatasAsyncNotifier, List<Map<String, dynamic>>, SpecsDatasProviderArg>(
  SpecsDatasAsyncNotifier.new,
);
