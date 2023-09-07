// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:xml/xml.dart';
import 'package:crypt/crypt.dart';

class UserModel {
  int? userId;
  String? userName;
  String? password;
  String? firstName;
  String? lastName;

  UserModel({
    this.userId,
    this.userName,
    this.password,
    this.firstName,
    this.lastName,
  });

  Map<String, dynamic> toMap() {
    var hashPW = Crypt.sha256(password!); //For Hashing the password value

    var map = <String, dynamic>{};
    map["userId"] = userId;
    map["userName"] = userName;
    map["firstName"] = firstName;
    map["lastName"] = lastName;
    map["password"] = hashPW.toString();
    return map;
  }

  UserModel.fromMap(Map<dynamic, dynamic> map) {
    userId = map['userId'];
    userName = map['userName'];
    firstName = map['firstName'];
    lastName = map['lastName'];
    password = map['password'];
  }

  String toXML() {
    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0"');
    builder.element('User', nest: () {
      builder.element('userId', nest: userId?.toString());
      builder.element('userName', nest: userName);
      builder.element('firstName', nest: firstName);
      builder.element('lastName', nest: lastName);
    });
    final xmlDoc = builder.buildDocument();
    final xmlString = xmlDoc.toXmlString(pretty: true);
    return xmlString;
  }
}

Future userModel() async {
  // Add your function code here!
}
