import 'package:data_module/providers/download_file_state_enum.dart';

class DownloadFileResult {
  final DownloadFileStateEnum state ;
  // 0-1
  final double progress;
  final List<int> data;

  DownloadFileResult(
    {
      required this.state,
      required this.progress,
      required this.data,
    }
  );
}
