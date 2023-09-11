// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../actions/timesheetmodel.dart';

Future<int?> clockInAction(int? userId) async {
  // Add your function code here!

  var dt = DateTime.now().toString();
  Map<String, dynamic> col = {
    'user_id': userId,
    'time_in': dt,
  };

  var q = await TimesheetModel.clockIn(col);
  return q > 0 ? q : null;
}
