import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'IBMPlexMono',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.black54,
            backgroundColor: Colors.transparent,
            side: BorderSide(style: BorderStyle.solid, color: Colors.black54),
          ),
        ),
      ),
      home: Home(),
    );
  }
}
