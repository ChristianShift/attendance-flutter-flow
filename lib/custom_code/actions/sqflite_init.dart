// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' show Platform;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future sqfliteinit() async {
  print("isMacOS: ${Platform.isMacOS}");
  print("isWindows: ${Platform.isWindows}");
  print("isLinux: ${Platform.isLinux}");
  print("isAndroid: ${Platform.isAndroid}");
  print("isIOS: ${Platform.isIOS}");

  sqfliteFfiInit();
  // Change the default factory
  databaseFactory = databaseFactoryFfi;
  // Add your function code here!
}
