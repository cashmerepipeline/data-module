import 'package:cashmere_core/ids/general_field_ids.dart';
import 'package:cashmere_core/view_models/entity_view_base.dart';
import 'package:cashmere_core/view_models/set_general_fields.dart';
import 'package:data_module/field_ids.dart';

class SpecsView extends EntityViewBase {
  late String manageId;
  late String entityId;
  late Map<String, dynamic> targets;
  SpecsView(String id) : super(id);

  factory SpecsView.fromMap(Map<String, dynamic> map) {
    final entity = SpecsView(map[ID_FIELD_ID.toString()]);
    entity.manageId = map[SPECSES_MANAGE_ID_FIELD_ID.toString()];
    entity.entityId = map[SPECSES_ENTITY_ID_FIELD_ID.toString()];
    entity.targets = map[SPECSES_TARGETS_FIELD_ID.toString()];
    
    final result = setGeneralFields(entity, map);

    return result;
  }
}
