import 'dart:io';

import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart' as path_provider;


Future saveAndShare(byte, String title) async {
  final directory = await path_provider.getApplicationDocumentsDirectory();
  final image = File('${directory.path}/$title');
  image.writeAsBytesSync(byte);
  await Share.shareFiles([image.path]);
}
