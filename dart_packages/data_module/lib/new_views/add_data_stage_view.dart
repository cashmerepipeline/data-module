import 'package:cashmere_core/new_entity_calls/view_to_request.dart';
import 'package:data_module/protocols/stage.pb.dart';

class AddDataStageView extends ViewToRequest<AddDataStageRequest> {
  final String dataId;
  final String stage;
  final String description;

  AddDataStageView({
    required this.dataId,
    required this.stage,
    required this.description,
  });

  @override
  AddDataStageRequest toRequest() {
    return AddDataStageRequest(
      dataId: dataId,
      stage: stage,
      description: description,
    );
  }
}
