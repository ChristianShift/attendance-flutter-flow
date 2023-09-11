// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'user_model.dart';
import 'database_helper.dart';
import 'package:crypt/crypt.dart';

class UserDatabaseHelper {
  static String tableName = 'User';

  static Future<dynamic> createUser(UserModel user) async {
    try {
      var database = await DatabaseHelper.instance.database;
      var res = await database!.insert(tableName, user.toMap());

      return res;
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<dynamic> login(String userName, String password) async {
    String pWord = password;
    String uName = userName;

    var database = await DatabaseHelper.instance.database;
    var res = await database!.rawQuery(
        'SELECT A.*, MAX(B.timeIn) as timeIn FROM user A LEFT JOIN timesheet B ON A.userId = B.userId WHERE A.userName=? LIMIT 1',
        [uName]);
    if (res.length > 0) {
      var h = Crypt(res[0]['password'].toString());
      if (h.match(pWord)) {
        return res;
      } else {
        return [
          {'message': 'wrong password'}
        ];
      }
    } else {
      return [
        {'message': 'no user'}
      ];
    }
  }

  static Future<List<UserModel>> getUsers() async {
    var database = await DatabaseHelper.instance.database;
    List<Map> list = await database!.rawQuery('SELECT * FROM $tableName');

    List<UserModel> users = [];

    for (var element in list) {
      var user = UserModel.fromMap(element);
      users.add(user);
    }
    await Future.delayed(const Duration(seconds: 2));
    return users;
  }

  static Future<void> updateUser(UserModel user) async {
    var database = await DatabaseHelper.instance.database;
    await database!.update(
      tableName,
      user.toMap(),
      where: 'userId = ?',
      whereArgs: [user.userId],
    );
  }

  static Future<void> deleteUser(int userId) async {
    var database = await DatabaseHelper.instance.database;
    await database!.delete(
      tableName,
      where: 'userId = ?',
      whereArgs: [userId],
    );
  }
}

Future userDatabaseHelper() async {
  // Add your function code here!
}
