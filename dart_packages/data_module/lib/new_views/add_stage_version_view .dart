import 'package:cashmere_core/new_entity_calls/view_to_request.dart';
import 'package:data_module/protocols/stage.pb.dart';
import 'package:data_module/protocols/version.pb.dart';

class AddStageVersionView extends ViewToRequest<AddStageVersionRequest> {
  final String stageId;
  final String version;

  AddStageVersionView({
    required this.stageId,
    required this.version,
  });

  @override
  AddStageVersionRequest toRequest() {
    return AddStageVersionRequest(
      stageId: stageId,
      version: version,
    );
  }
}
