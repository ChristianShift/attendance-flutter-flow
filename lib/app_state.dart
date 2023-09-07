import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String _value) {
    _userName = _value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String _value) {
    _firstName = _value;
  }

  int _userId = 0;
  int get userId => _userId;
  set userId(int _value) {
    _userId = _value;
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String _value) {
    _lastName = _value;
  }

  DateTime? _timeIn;
  DateTime? get timeIn => _timeIn;
  set timeIn(DateTime? _value) {
    _timeIn = _value;
  }

  DateTime? _timeOut;
  DateTime? get timeOut => _timeOut;
  set timeOut(DateTime? _value) {
    _timeOut = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
