// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseHelper {
  static const _databaseName = "fulcrum.db";
  static const _databaseVersion = 1;

  DatabaseHelper._internal();
  static final DatabaseHelper databaseHelper = DatabaseHelper._internal();
  static DatabaseHelper get instance => databaseHelper;

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    String path;
    if (!kIsWeb) {
      final dbPath = await getApplicationDocumentsDirectory();
      if (!await dbPath.exists()) {
        await dbPath.create(recursive: true);
      }
      path = join(dbPath.path, _databaseName);
    } else {
      final dbPath = await getDatabasesPath();
      path = join(dbPath, _databaseName);
    }

    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE user('
        'userId integer constraint user_pk primary key autoincrement,'
        'userName TEXT not null,'
        'password TEXT not null,'
        'firstName TEXT not null,'
        'lastName TEXT not null,'
        'isDeleted INTEGER default 0 not null);'
        'CREATE TABLE timesheet('
        'id integer primary key autoincrement,'
        'userId integer constraint userId_fk references user,'
        'timeIn ANY, timeOut ANY,'
        'isDeleted INTEGER default 0 not null);');
  }
}

Future databaseHelper() async {
  // Add your function code here!
}
