// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class LoginResponse extends StatefulWidget {
  const LoginResponse({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _LoginResponseState createState() => _LoginResponseState();
}

class _LoginResponseState extends State<LoginResponse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text(''),
            content: Text('Login Success!'),
            actions: [
              TextButton(
                onPressed: () => context.goNamed(
                  'HomePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                ),
                child: Text('Ok'),
              ),
            ],
          );
        },
      ),
    );
  }
}
