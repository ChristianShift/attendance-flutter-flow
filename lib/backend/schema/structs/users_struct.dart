// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? userId,
    String? userName,
    String? password,
    String? firstName,
    String? lastName,
    int? isDeleted,
  })  : _userId = userId,
        _userName = userName,
        _password = password,
        _firstName = firstName,
        _lastName = lastName,
        _isDeleted = isDeleted;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "isDeleted" field.
  int? _isDeleted;
  int get isDeleted => _isDeleted ?? 0;
  set isDeleted(int? val) => _isDeleted = val;
  void incrementIsDeleted(int amount) => _isDeleted = isDeleted + amount;
  bool hasIsDeleted() => _isDeleted != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        userId: castToType<int>(data['userId']),
        userName: data['userName'] as String?,
        password: data['password'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        isDeleted: castToType<int>(data['isDeleted']),
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UsersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'userName': _userName,
        'password': _password,
        'firstName': _firstName,
        'lastName': _lastName,
        'isDeleted': _isDeleted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'isDeleted': serializeParam(
          _isDeleted,
          ParamType.int,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        isDeleted: deserializeParam(
          data['isDeleted'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        userId == other.userId &&
        userName == other.userName &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userId, userName, password, firstName, lastName, isDeleted]);
}

UsersStruct createUsersStruct({
  int? userId,
  String? userName,
  String? password,
  String? firstName,
  String? lastName,
  int? isDeleted,
}) =>
    UsersStruct(
      userId: userId,
      userName: userName,
      password: password,
      firstName: firstName,
      lastName: lastName,
      isDeleted: isDeleted,
    );
