// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimesheetStruct extends BaseStruct {
  TimesheetStruct({
    int? id,
    int? userId,
    DateTime? timeIn,
    DateTime? timeOut,
  })  : _id = id,
        _userId = userId,
        _timeIn = timeIn,
        _timeOut = timeOut;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "timeIn" field.
  DateTime? _timeIn;
  DateTime? get timeIn => _timeIn;
  set timeIn(DateTime? val) => _timeIn = val;
  bool hasTimeIn() => _timeIn != null;

  // "timeOut" field.
  DateTime? _timeOut;
  DateTime? get timeOut => _timeOut;
  set timeOut(DateTime? val) => _timeOut = val;
  bool hasTimeOut() => _timeOut != null;

  static TimesheetStruct fromMap(Map<String, dynamic> data) => TimesheetStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['userId']),
        timeIn: data['timeIn'] as DateTime?,
        timeOut: data['timeOut'] as DateTime?,
      );

  static TimesheetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TimesheetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userId': _userId,
        'timeIn': _timeIn,
        'timeOut': _timeOut,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'timeIn': serializeParam(
          _timeIn,
          ParamType.DateTime,
        ),
        'timeOut': serializeParam(
          _timeOut,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TimesheetStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimesheetStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        timeIn: deserializeParam(
          data['timeIn'],
          ParamType.DateTime,
          false,
        ),
        timeOut: deserializeParam(
          data['timeOut'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TimesheetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimesheetStruct &&
        id == other.id &&
        userId == other.userId &&
        timeIn == other.timeIn &&
        timeOut == other.timeOut;
  }

  @override
  int get hashCode => const ListEquality().hash([id, userId, timeIn, timeOut]);
}

TimesheetStruct createTimesheetStruct({
  int? id,
  int? userId,
  DateTime? timeIn,
  DateTime? timeOut,
}) =>
    TimesheetStruct(
      id: id,
      userId: userId,
      timeIn: timeIn,
      timeOut: timeOut,
    );
