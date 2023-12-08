import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:data_module/protocols/file_info.pb.dart';
import 'package:fixnum/fixnum.dart';

Future<String> getMd5(String filePath) async {
  final file = File(filePath);
  final bytes = await file.readAsBytes();
  final digest = md5.convert(bytes);
  return digest.toString();
}

Future<FileInfo> getFileInfo(String filePath) async {
  final file = File(filePath);
  final bytes = await file.readAsBytes();
  final modifyTime = file.lastModifiedSync();
  final digest = md5.convert(bytes).toString();

  return FileInfo(
    fileName: file.path.split('/').last,
    size: Int64(bytes.length),
    md5: digest,
    lastModifiedTime: Int64(modifyTime.millisecondsSinceEpoch),
  );
}
