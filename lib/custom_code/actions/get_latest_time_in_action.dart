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

Future<TimesheetStruct?> getLatestTimeInAction(int userId) async {
  // Add your function code here!

  var q = await TimesheetModel.getLatestTimeIn(userId);
  print('Latest TimeIn: $q');
  if (q.length > 0) {
    Map<String, dynamic> dt = {
      'id' : q[0]['id'],
      'time_in': q[0]['time_in'] != null ? DateTime.parse(q[0]['time_in']) : null,
      'time_out': q[0]['time_out'] != null ? DateTime.parse(q[0]['time_out']) : null,
    };
    return TimesheetStruct.fromMap(dt); // Using user DataType, used q[0] to get the first index
  } else {
    return null;
  }
}
