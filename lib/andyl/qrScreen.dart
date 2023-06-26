import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';

import '../utils.dart';

class QRScreen extends StatelessWidget {
  QRScreen({super.key});

  final screenshot = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        QrImage(
          data: "Medisecure-hgiyuduhvsdkjqfvshygyfzbshjfbsjgfkiuqsyuj",
          version: QrVersions.auto,
          size: 200.0,
        ),
        IconButton(
            onPressed: () async {
              final image = await screenshot.captureFromWidget(QrImage(
                data: "Medisecure-hgiyuduhvsdkjqfvshygyfzbshjfbsjgfkiuqsyuj",
                version: QrVersions.auto,
                size: 200.0,
              ));
              var dateString = DateTime.now()
                  .toIso8601String()
                  .replaceAll(":", "-")
                  .replaceAll(".", "-");
              var imageTitle = "image-$dateString.png";
              saveAndShare(image, imageTitle);
            },
            icon: const Icon(Icons.share))
      ]),
    ));
  }
}
