// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' show Directory;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart' as sql;

const String dbName = 'attendance.db';
String userTbl =
    'CREATE TABLE IF NOT EXISTS user( id integer constraint user_pk primary key autoincrement, user_name TEXT not null, password TEXT not null, first_name TEXT not null, last_name TEXT not null, is_deleted INTEGER default 0 not null);';
String timesheetTbl =
    'CREATE TABLE IF NOT EXISTS timesheet( id integer primary key autoincrement, user_id integer constraint user_id_fk references user, time_in ANY, time_out ANY, is_deleted INTEGER default 0 not null);';

class Repo {
  // Initial connection for SQFlite
  static Future<sql.Database> db() async {
    Directory dbPath = await getApplicationDocumentsDirectory();
    print("EXIST ${await dbPath.exists()}");
    if (!await dbPath.exists()) {
      await dbPath.create(recursive: true);
    }

    String path = join(dbPath.path, dbName);
    print('PATH $path');
    return await sql.openDatabase(
      path,
      onCreate: (db, version) async {
        // Run the CREATE TABLE statement on the database.
        return await db.execute(userTbl + timesheetTbl);
      },
      version: 1,
    );
  }

  static Future<dynamic> rawQuery(
      String qString, List<Object> whereArgs) async {
    var db = await Repo.db();
    try {
      var res = db.rawQuery(qString, whereArgs);
      return res;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  // for testing the connection
  static Future<List<Map<String, dynamic>>> testConn(String tbl) async {
    var db = await Repo.db();
    try {
      var res = db.rawQuery('SELECT * FROM $tbl');
      return res;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<int> insert(String tbl, Map<String, dynamic> col) async {
    var db = await Repo.db();
    try {
      var id = await db.insert(
        tbl,
        col,
        conflictAlgorithm: sql.ConflictAlgorithm.rollback,
      );
      return id;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<List<Map<String, dynamic>>> getOne(String tbl, int id) async {
    var db = await Repo.db();
    try {
      var res = db.rawQuery(
          'SELECT * FROM $tbl WHERE ${tbl}_id=? AND is_deleted=? LIMIT 1',
          [id, 0]);
      return res;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<List<Map<String, dynamic>>> get(
      String tbl, String where, List<Object> whereArgs) async {
    var db = await Repo.db();
    // where is a String, Ex: 'user_id=?'
    // whereArgs is an List of Object, Ex: [23]
    try {
      return db.rawQuery('SELECT * FROM $tbl WHERE $where', whereArgs);
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<int> updateOne(
      String tbl, int id, Map<String, dynamic> col) async {
    var db = await Repo.db();
    try {
      var res = await db.update(
        tbl,
        col,
        where: 'id=? AND is_deleted=?', // Temporary column for softDelete
        whereArgs: [id, 0],
        conflictAlgorithm: sql.ConflictAlgorithm.rollback,
      );
      return res;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }

  static Future<bool> deleteOne(String tbl, int id) async {
    var db = await Repo.db();
    try {
      await db.update(
        tbl,
        {'isDeleted': 1}, // Temporary column for softDelete
        where: 'id = ? AND isDeleted = ?',
        whereArgs: [id, 0],
        conflictAlgorithm: sql.ConflictAlgorithm.rollback,
      );
      return true;
    } catch (err) {
      debugPrint('Repo Error: $err');
      throw Error();
    }
  }
}

Future repo() async {
  // code here
}
