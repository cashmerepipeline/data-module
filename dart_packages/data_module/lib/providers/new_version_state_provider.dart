import 'package:cashmere_core/providers/new_providers/new_entity_state_notifier.dart';
import 'package:data_module/new_views/add_stage_version_view%20.dart';
import 'package:data_module/protocols/version.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addStageVersionNotifierProvider = StateNotifierProvider.autoDispose<
    NewEntityNotifier<AddStageVersionView, AddStageVersionRequest, AddStageVersionResponse>, NewEntityNotifierState>((ref) {
  return NewEntityNotifier<AddStageVersionView, AddStageVersionRequest, AddStageVersionResponse>();
});
