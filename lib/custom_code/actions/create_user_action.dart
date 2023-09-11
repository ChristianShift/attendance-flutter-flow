// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!


// Custom Imports
import 'user_model.dart';
import 'package:crypt/crypt.dart';

Future<String> createUserAction(
  String userName,
  String password,
  String firstName,
  String lastName,
) async {
  String response = 'Fail, Something went wrong!';
  var hashPW = Crypt.sha256(password);

  Map<String, dynamic> col = {
    'user_name': userName,
    'password': hashPW.toString(),
    'first_name': firstName,
    'last_name': lastName,
  };

  //code here
  var q = await UserModel.createUser(col);
  if (q > 0) {
    response = 'success';
  }

  return response;
}
