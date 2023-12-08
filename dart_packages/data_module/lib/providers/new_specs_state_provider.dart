import 'package:cashmere_core/providers/new_providers/new_entity_state_notifier.dart';
import 'package:data_module/new_views/new_specs_view.dart';
import 'package:data_module/protocols/specs.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newSpecsNotifierProvider = StateNotifierProvider.autoDispose<
    NewEntityNotifier<NewSpecsView, NewSpecsRequest, NewSpecsResponse>, NewEntityNotifierState>((ref) {
  return NewEntityNotifier<NewSpecsView, NewSpecsRequest, NewSpecsResponse>();
});
