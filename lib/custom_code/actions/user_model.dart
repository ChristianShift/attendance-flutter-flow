// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:crypt/crypt.dart';
import 'repo.dart'; // Default package


// Will revamp this
class UserModel {
  final int userId;
  final String userName;
  final String fullName;
  final int isDeleted;

  const UserModel({
    required this.userId,
    required this.userName,
    required this.fullName,
    required this.isDeleted,
  });

  static Future<List<Map<String, dynamic>>> getUser(int userId) async {
    return await Repo.getOne('user', userId);
  }

  static Future<dynamic> login(String userName, String password) async {
    String pWord = password;
    String uName = userName;

    final res = await Repo.rawQuery('SELECT A.* FROM user A LEFT JOIN timesheet B ON A.id = B.id WHERE A.user_name=? LIMIT 1', [uName]);
    print('RES: $res');
    if(res.length > 0 && res[0]['id'] != null) {
      final h = Crypt(res[0]['password'].toString());
      if(h.match(pWord)) {
        return res;
      } else {
        return [{}];
      }
    } else {
      return [{}];
    }
  }

  static Future<List<Map<String, dynamic>>> getUsers(
      String where, List<Object> whereArgs) async {
    return await Repo.get('user', where, whereArgs);
  }

  static Future<bool> checkIfExisting(String userName) async {
    final res =  await Repo.rawQuery('SELECT id FROM user WHERE user_name=?', [userName]);
    if (res.length >  0) {
      return true;
    } 
    return false;
  }

  static Future<List<Map<String, dynamic>>> getUsersTimeInfo(int userId) async {
    return await Repo.rawQuery('SELECT * FROM user INNER JOIN timesheet ON user.id = timesheet.user_id WHERE user.id =? AND user.is_deleted =? ORDER BY timesheet.time_in DESC', [userId, 0]);
  }

  static Future<List<Map<String, dynamic>>> getUsersTimeDetails(int userId, DateTime dt) async {
    String dtStr = DateFormat("yyyy-MM-dd").format(dt);
    return await Repo.rawQuery('SELECT user.id, timesheet.time_in, timesheet.time_out FROM user INNER JOIN timesheet ON user.id = timesheet.user_id  WHERE user_id=? AND DATE(time_in)=?', [userId, dtStr]);
  }

  static Future<int> createUser(Map<String, dynamic> col) async {
    return await Repo.insert('user', col);
  }

  static Future<int> updateUser(int userId, Map<String, dynamic> col) async {
    return await Repo.updateOne('user', userId, col);
  }

  static Future<String> deleteUser(int userId) async {
    String response = 'failed';
    final delRes = await Repo.deleteOne('user', userId);

    if (delRes) {
      response = 'success';
    }
    return response;
  }
}

Future userModel() async {
  // Code here
}