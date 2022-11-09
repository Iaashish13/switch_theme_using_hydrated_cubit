import 'package:change_theme/screen/change_theme_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Theme',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: ChangeThemeScreen(),
    );
  }
}


