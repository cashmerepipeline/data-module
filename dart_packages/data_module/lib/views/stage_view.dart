import 'package:cashmere_core/ids/general_field_ids.dart';
import 'package:cashmere_core/view_models/entity_view_base.dart';
import 'package:cashmere_core/view_models/set_general_fields.dart';
import 'package:data_module/field_ids.dart';

class StageView extends EntityViewBase {
  late String dataId;
  late String stage;
  late String currentVersion;

  StageView(String id) : super(id);

  factory StageView.fromMap(Map<String, dynamic> map) {
    final entity = StageView(map[ID_FIELD_ID.toString()]);
    entity.dataId = map[STAGES_DATA_ID_FIELD_ID.toString()];
    entity.stage = map[STAGES_STAGE_FIELD_ID.toString()];
    entity.currentVersion = map[STAGES_CURRENT_VERSION_FIELD_ID.toString()];

    final result = setGeneralFields(entity, map);

    return result;
  }
}
