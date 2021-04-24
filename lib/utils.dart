import 'package:flutter/material.dart';

final signupPurpleGradient = LinearGradient(colors: [
  Color.fromRGBO(145, 131, 222, 1),
  Color.fromRGBO(160, 148, 227, 1),
]);
final signupDarkPurple = Color.fromRGBO(82, 67, 154, 1);

final loginPurpleGradient = LinearGradient(colors: [
  Color.fromRGBO(229, 178, 202, 1),
  Color.fromRGBO(205, 130, 222, 1),
]);
final loginDarkPurple = Color.fromRGBO(120, 37, 139, 1);

const String USER = 'assets/icons/user.png';
const String KEY = 'assets/icons/key.png';

InputDecoration decoration(String iconAsset) {
  return InputDecoration(
    prefixIcon: Image.asset(iconAsset),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
  );
}
