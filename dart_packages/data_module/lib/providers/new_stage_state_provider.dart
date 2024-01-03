import 'package:cashmere_core/providers/new_providers/new_entity_state_notifier.dart';
import 'package:data_module/new_views/add_data_stage_view.dart';
import 'package:data_module/protocols/stage.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addDataStageNotifierProvider = StateNotifierProvider.autoDispose<
    NewEntityNotifier<AddDataStageView, AddDataStageRequest, AddDataStageResponse>, NewEntityNotifierState>((ref) {
  return NewEntityNotifier<AddDataStageView, AddDataStageRequest, AddDataStageResponse>();
});
