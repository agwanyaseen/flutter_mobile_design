import 'package:auth_screens_challenge/screens/login_screen.dart';
import 'package:auth_screens_challenge/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final whiteNBold =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              headline4: whiteNBold,
              headline6: TextStyle(color: Colors.white))),
      title: 'Auth Screen Challenge',
      home: SignUpScreen(),
    );
  }
}
