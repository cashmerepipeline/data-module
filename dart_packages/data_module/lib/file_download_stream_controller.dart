import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:data_module/protocols/file_info.pb.dart';
import 'package:data_module/protocols/file_transfer.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';

const ChuckSize = 1024 * 10 * 1;

class DownloadFileStreamController {
  final String specsId;
  final String dataId;
  final String stage;
  final String version;
  final String subPath;
  final String fileName;

  late StreamController<DownloadFileFromVersionRequest> streamController;
  late DownloadFileFromVersionRequest firstRequest;

  get stream => streamController.stream;

  DownloadFileStreamController(
    this.specsId,
    this.dataId,
    this.stage,
    this.version,
    this.subPath,
    this.fileName,
  ) {
    streamController = StreamController<DownloadFileFromVersionRequest>();

    firstRequest = DownloadFileFromVersionRequest(
      specsId: specsId,
      dataId: dataId,
      stage: stage,
      version: version,
      subPath: subPath,
      fileName: fileName
    );
  }

  // 第1个包由客户端主动发出
  sendFirst() {
    streamController.add(firstRequest);
  }

  // 就收到服务端应答后发送下一个包
  // 发送从0开始，到0结束
  sendNext(Int64 nextIndex) {
    // 实际数据编号比包编号小1

    streamController.add(DownloadFileFromVersionRequest(
      chunkIndex: nextIndex
    ));
  }

  // 到0结束
  sendLast() {
    sendFirst();
  }

  close() {
    streamController.close();
  }
}
