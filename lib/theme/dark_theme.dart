import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  appBarTheme:
      const AppBarTheme(backgroundColor: Color(0xff121212), elevation: 1),
  primaryColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 13,
      color: Colors.grey,
    ),
  ),
);
