// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../actions/repo.dart'; // Default package

// Will revamp this
class TimesheetModel {
  final int timesheetId;
  final int userId;
  final DateTime timeIn;
  final DateTime timeOut;

  TimesheetModel({
    required this.timesheetId,
    required this.userId,
    required this.timeIn,
    required this.timeOut,
  });

  static Future<int> clockIn(Map<String, dynamic> col) async {
    try {
      return await Repo.insert('timesheet', col);
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<dynamic> getLatestTimeIn(int userId) async {
    Map<String, dynamic> empty = {};
    String dtStr = DateFormat("yyyy-MM-dd").format(DateTime.now());
    try {
      var q = await Repo.rawQuery(
          'SELECT id, MAX(time_in) as time_in, time_out FROM timesheet WHERE user_id=? AND DATE(time_in) =?',
          [userId, dtStr]);
      return q;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<int> clockOut(int tblId, Map<String, dynamic> col) async {
    try {
      return await Repo.updateOne('timesheet', tblId, col);
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<int> updateTime(int tblId, Map<String, dynamic> col) async {
    try {
      return await Repo.updateOne('timesheet', tblId, col);
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<dynamic> getLatestDetails(DateTime dtTime, int uId) async {
    String dtStr = DateFormat("yyyy-MM-dd").format(dtTime);
    try {
      return await Repo.rawQuery(
          'SELECT id, MAX(time_in) as time_in, MAX(time_out) as time_out FROM timesheet WHERE user_id=? AND DATE(time_in) =?',
          [uId, dtStr]);
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }
}

Future timesheetmodel() async {
  // Code here...
}
