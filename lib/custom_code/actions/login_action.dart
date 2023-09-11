// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'user_model.dart';

Future<List<UsersStruct>?> loginAction(
  String userName,
  String password,
) async {
  var q = await UserModel.login(userName, password);

  print('Logging Session: $q');
  if (q.length > 0) {
    return [UsersStruct.fromMap(q[0])]; // Using user DataType, used q[0] to get the first index
  } else {
    return null;
  }
}
