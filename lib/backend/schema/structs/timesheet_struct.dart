// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimesheetStruct extends BaseStruct {
  TimesheetStruct({
    int? timesheetId,
    int? userId,
    DateTime? timeIn,
    DateTime? timeOut,
    DateTime? dateCreated,
    DateTime? dateModified,
  })  : _timesheetId = timesheetId,
        _userId = userId,
        _timeIn = timeIn,
        _timeOut = timeOut,
        _dateCreated = dateCreated,
        _dateModified = dateModified;

  // "timesheetId" field.
  int? _timesheetId;
  int get timesheetId => _timesheetId ?? 0;
  set timesheetId(int? val) => _timesheetId = val;
  void incrementTimesheetId(int amount) => _timesheetId = timesheetId + amount;
  bool hasTimesheetId() => _timesheetId != null;

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

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  set dateCreated(DateTime? val) => _dateCreated = val;
  bool hasDateCreated() => _dateCreated != null;

  // "dateModified" field.
  DateTime? _dateModified;
  DateTime? get dateModified => _dateModified;
  set dateModified(DateTime? val) => _dateModified = val;
  bool hasDateModified() => _dateModified != null;

  static TimesheetStruct fromMap(Map<String, dynamic> data) => TimesheetStruct(
        timesheetId: castToType<int>(data['timesheetId']),
        userId: castToType<int>(data['userId']),
        timeIn: data['timeIn'] as DateTime?,
        timeOut: data['timeOut'] as DateTime?,
        dateCreated: data['dateCreated'] as DateTime?,
        dateModified: data['dateModified'] as DateTime?,
      );

  static TimesheetStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TimesheetStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'timesheetId': _timesheetId,
        'userId': _userId,
        'timeIn': _timeIn,
        'timeOut': _timeOut,
        'dateCreated': _dateCreated,
        'dateModified': _dateModified,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'timesheetId': serializeParam(
          _timesheetId,
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
        'dateCreated': serializeParam(
          _dateCreated,
          ParamType.DateTime,
        ),
        'dateModified': serializeParam(
          _dateModified,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TimesheetStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimesheetStruct(
        timesheetId: deserializeParam(
          data['timesheetId'],
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
        dateCreated: deserializeParam(
          data['dateCreated'],
          ParamType.DateTime,
          false,
        ),
        dateModified: deserializeParam(
          data['dateModified'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TimesheetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimesheetStruct &&
        timesheetId == other.timesheetId &&
        userId == other.userId &&
        timeIn == other.timeIn &&
        timeOut == other.timeOut &&
        dateCreated == other.dateCreated &&
        dateModified == other.dateModified;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([timesheetId, userId, timeIn, timeOut, dateCreated, dateModified]);
}

TimesheetStruct createTimesheetStruct({
  int? timesheetId,
  int? userId,
  DateTime? timeIn,
  DateTime? timeOut,
  DateTime? dateCreated,
  DateTime? dateModified,
}) =>
    TimesheetStruct(
      timesheetId: timesheetId,
      userId: userId,
      timeIn: timeIn,
      timeOut: timeOut,
      dateCreated: dateCreated,
      dateModified: dateModified,
    );
