import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  appBarTheme:
      const AppBarTheme(backgroundColor: Colors.blueAccent, elevation: 1),
  primaryColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.black,
    ),
     bodyText2: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 11,
      color: Colors.grey,
    )
  ),
);
