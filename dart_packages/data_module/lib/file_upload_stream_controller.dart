import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:data_module/protocols/file_info.pb.dart';
import 'package:data_module/protocols/file_transfer.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';

const ChuckSize = 1024 * 10 * 1;

class UploadFileStreamController {
  final String specsId;
  final String dataId;
  final String filePath;
  final String stage;
  final String version;

  late FileInfo fileInfo;
  late Uint8List bytes;

  late StreamController<UploadFileToVersionRequest> uploadStreamController;
  late UploadFileToVersionRequest firstRequest;
  late int totalChuncks;

  get stream => uploadStreamController.stream;

  UploadFileStreamController({
    required this.specsId,
    required this.dataId,
    required this.filePath,
    required this.stage,
    required this.version,
  }) {
    uploadStreamController = StreamController<UploadFileToVersionRequest>();

    final file = File(filePath);
    bytes = file.readAsBytesSync();
    totalChuncks = (bytes.length / ChuckSize).ceil();
    final fileDigest = md5.convert(bytes);
    final modifyTime = file.lastModifiedSync();
    final fileName = file.path.split('/').last;

    fileInfo = FileInfo(
      fileName: fileName,
      md5: fileDigest.toString(),
      size: Int64(bytes.length),
      lastModifiedTime: Int64(modifyTime.microsecondsSinceEpoch),
    );

    firstRequest = UploadFileToVersionRequest(
      specsId: specsId,
      dataId: dataId,
      chunk: [0],
      currentChunkIndex: Int64(0),
      totalChunks: Int64(totalChuncks),
      fileInfo: fileInfo,
      chunkMd5: "",
      stage: stage,
      version: version,
    );
  }

  // 第1个包由客户端主动发出
  sendFirst() {
    uploadStreamController.add(firstRequest);
  }

  // 就收到服务端应答后发送下一个包
  // 发送从0开始，到0结束
  sendNext(Int64 transferIndex) {
    // 实际数据编号比包编号小1
    final i = (transferIndex - 1).toInt();
    final start = i * ChuckSize;
    var end = (i + 1) * ChuckSize;
    if (end > bytes.length) {
      end = bytes.length;
    }

    final chunk = bytes.sublist(start, end);
    debugPrint("chunk ${i}: transferIndex: $transferIndex, ${chunk.length}/${totalChuncks}");

    uploadStreamController.add(UploadFileToVersionRequest(
      chunk: chunk,
      currentChunkIndex: transferIndex,
      totalChunks: Int64(totalChuncks),
      chunkMd5: md5.convert(chunk).toString(),
    ));
  }

  // 到0结束
  sendLast() {
    sendFirst();
  }

  close() {
    uploadStreamController.close();
  }
}
