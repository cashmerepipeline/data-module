import 'package:cashmere_core/ids/general_field_ids.dart';
import 'package:cashmere_core/view_models/entity_view_base.dart';
import 'package:cashmere_core/view_models/set_general_fields.dart';

class SpecsView extends EntityViewBase {
  SpecsView(String id) : super(id);

  factory SpecsView.fromMap(Map<String, dynamic> map) {
    final entity = SpecsView(map[ID_FIELD_ID.toString()]);
    final result = setGeneralFields(entity, map);

    return result;
  }
}

