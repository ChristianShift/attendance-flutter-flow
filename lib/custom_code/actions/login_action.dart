// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import './user_database_helper.dart';

Future<List<UsersStruct>?> loginAction(
  String userName,
  String password,
) async {
  var response = await UserDatabaseHelper.login(userName, password);

  if (response.length > 0) {
    return response;
  } else {
    return null;
  }
}
