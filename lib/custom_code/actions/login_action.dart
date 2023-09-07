// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'user_model.dart';
import 'user_database_helper.dart';
import 'database_helper.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

Future<dynamic?> loginAction(
  String userName,
  String password,
) async {
  var response = await UserDatabaseHelper.login(userName, password);
  print('RESP: $response');
  return response;
}
