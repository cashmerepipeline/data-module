import 'package:cashmere_core/ids/general_field_ids.dart';
import 'package:cashmere_core/view_models/entity_view_base.dart';
import 'package:cashmere_core/view_models/set_general_fields.dart';
import 'package:data_module/field_ids.dart';

class DataView extends EntityViewBase {
  late String specsId;
  late int dataType;
  late List<String> stages;
  late String mark;
  DataView(String id) : super(id);

  factory DataView.fromMap(Map<String, dynamic> map) {
    final entity = DataView(map[ID_FIELD_ID.toString()]);
    entity.specsId = map[DATAS_SPECS_ID_FIELD_ID.toString()];
    entity.dataType = map[DATAS_DATA_TYPE_FIELD_ID.toString()];
    entity.stages =
        map[DATAS_STAGES_FIELD_ID.toString()] != null ? List<String>.from(map[DATAS_STAGES_FIELD_ID.toString()]) : [];
    entity.mark = map[DATAS_MARK_FIELD_ID.toString()];

    final result = setGeneralFields(entity, map);

    return result;
  }
}
