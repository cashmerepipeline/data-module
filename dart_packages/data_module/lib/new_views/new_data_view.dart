import 'package:cashmere_core/new_entity_calls/view_to_request.dart';
import 'package:cashmere_core/protocols/name.pb.dart';
import 'package:data_module/protocols/data.pb.dart';
import 'package:data_module/protocols/data_type.pbenum.dart';

class NewDataView extends ViewToRequest<NewDataRequest> {
  final String specsId;
  final Name name;
  final DataType dataType;
  final String mark;

  NewDataView({
    required this.specsId,
    required this.name,
    required this.dataType,
    required this.mark,
  });

  @override
  NewDataRequest toRequest() {
    return NewDataRequest(
      name: name,
      dataType: dataType,
      specsId: specsId,
      mark: mark,
    );
  }
}
