library share_pdf;

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

///base of the package
class SharePDF {
  ///here is the [url] of the specific pdf
  final String url;

  ///[subject] parameter is for to get the customized subject line in the share sheet
  final String subject;

  ///here goes the constructor for [SharePDF]
  SharePDF({
    required this.url,
    required this.subject,
  });

  ///this functions [downloadAndShare] is responsible to get the url and make file and share the document
  Future downloadAndShare() async {
    ///gets the temporary directory of the device
    ///
    var tempDir = await getApplicationDocumentsDirectory();

    ///generate a fullPath with the directory and the url
    ///
    ///
    String fullPath = "${tempDir.path}/${url.split('/').last}";

    ///creates a file
    ///
    ///
    File(fullPath).create(recursive: true);

    try {
      File file = File(fullPath);

      await Share.shareXFiles(
          [XFile.fromData(file.readAsBytesSync(), path: fullPath)],
          text: url.split('/').last,
          subject: '$subject: ${url.split('/').last}');
    } catch (e) {
      ///in nay issue the function will return null
      ///
      ///
      return null;
    }
  }
}
