//  文件上传数据流
import 'dart:async';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:data_module/protocols/file_info.pb.dart';
import 'package:data_module/protocols/file_transfer.pb.dart';
import 'package:fixnum/fixnum.dart';

const ChuckSize = 1024 * 128 * 1;

Future<Stream<UploadFileRequest>> getFileDataUploadFileRequestStream(
    String data_id, String filePath) async {
  final uploadStreamController = StreamController<UploadFileRequest>();

  final file = File(filePath);
  final bytes = await file.readAsBytes();
  final fileDigest = md5.convert(bytes);
  final modifyTime = file.lastModifiedSync();
  final totalChuncks = (bytes.length / ChuckSize).ceil();
  final fileName = file.path.split('/').last;

  final fileInfo = FileInfo(
    fileName: fileName,
    md5: fileDigest.toString(),
    size: Int64(bytes.length),
    lastModifiedTime: Int64(modifyTime.microsecondsSinceEpoch),
  );

  final firstRequest = UploadFileRequest(
    dataId: data_id,
    chunk: [],
    currentChunkIndex: Int64(-1),
    totalChunks: Int64(totalChuncks),
    fileInfo: fileInfo,
  );

  // 发送第一个请求
  uploadStreamController.add(firstRequest);

  for (int i = 0; i < totalChuncks; i++) {
    final start = i * ChuckSize;
    var end = (i + 1) * ChuckSize;
    if (end > bytes.length) {
      end = bytes.length;
    }

    final chunk = bytes.sublist(start, end);
    print("chunk ${i}: ${chunk.length}/${totalChuncks}");

    uploadStreamController.add(UploadFileRequest(
      dataId: data_id,
      chunk: chunk,
      currentChunkIndex: Int64(i),
      totalChunks: Int64(totalChuncks),
      fileInfo: fileInfo,
    ));

    // 结束后必须发送关闭信号,  否则会一直等待发送下一个chunk
    if (i == totalChuncks - 1) {
      uploadStreamController.close();
    }
  }

  return uploadStreamController.stream;
}
