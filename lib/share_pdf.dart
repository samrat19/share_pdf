library share_pdf;

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class SharePDF {
  final String url;
  final String headerText;
  final String subject;

  SharePDF({
    required this.url,
    required this.headerText,
    required this.subject,
  });

  Future downloadAndShare() async {
    var tempDir = await getApplicationDocumentsDirectory();
    String fullPath = "${tempDir.path}/${url.split('/').last}";
    File(fullPath).create(recursive: true);

    try {
      File file = File(fullPath);

      await Share.shareXFiles(
          [XFile.fromData(file.readAsBytesSync(), path: fullPath)],
          text: url.split('/').last,
          subject: '$subject: ${url.split('/').last}');
    } catch (e) {
      return null;
    }
  }
}
