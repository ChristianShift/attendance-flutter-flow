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

Future<int?> clockOutAction(int timesheetId) async {
  // Add your function code here!
  var dt = DateTime.now().toString();
  Map<String, dynamic> col = {
    'time_out': dt,
  };

  var q = await TimesheetModel.clockOut(timesheetId, col);
  return q > 0 ? q : null;
}
