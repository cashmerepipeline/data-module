import 'package:cashmere_core/providers/new_providers/new_entity_state_notifier.dart';
import 'package:data_module/new_views/new_data_view.dart';
import 'package:data_module/protocols/data.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newDataNotifierProvider = StateNotifierProvider.autoDispose<
    NewEntityNotifier<NewDataView, NewDataRequest, NewDataResponse>, NewEntityNotifierState>((ref) {
  return NewEntityNotifier<NewDataView, NewDataRequest, NewDataResponse>();
});
