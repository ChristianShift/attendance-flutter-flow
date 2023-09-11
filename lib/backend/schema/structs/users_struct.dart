// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? id,
    String? userName,
    String? password,
    String? firstName,
    String? lastName,
  })  : _id = id,
        _userName = userName,
        _password = password,
        _firstName = firstName,
        _lastName = lastName;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        id: castToType<int>(data['id']),
        userName: data['user_name'] as String?,
        password: data['password'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_name': _userName,
        'password': _password,
        'first_name': _firstName,
        'last_name': _lastName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        id == other.id &&
        userName == other.userName &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userName, password, firstName, lastName]);
}

UsersStruct createUsersStruct({
  int? id,
  String? userName,
  String? password,
  String? firstName,
  String? lastName,
}) =>
    UsersStruct(
      id: id,
      userName: userName,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );
