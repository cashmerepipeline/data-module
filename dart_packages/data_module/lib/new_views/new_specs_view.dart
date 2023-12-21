import 'package:cashmere_core/new_entity_calls/view_to_request.dart';
import 'package:cashmere_core/protocols/name.pb.dart';
import 'package:data_module/protocols/specs.pb.dart';
import 'package:bson/bson.dart';

class NewSpecsView extends ViewToRequest<NewSpecsRequest> {
  final String manageId;
  final String entityId;
  final Name name;
  final String description;
  final Map<String, dynamic> targets;

  NewSpecsView({
    required this.manageId,
    required this.entityId,
    required this.name,
    required this.description,
    required this.targets,
  });

  @override
  NewSpecsRequest toRequest() {
    return NewSpecsRequest(
      manageId: manageId,
      entityId: entityId,
      name: name,
      description: description,
      targets: BsonCodec.serialize(targets).byteList,
    );
  }
}
