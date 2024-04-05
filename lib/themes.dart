import 'package:flutter/material.dart';


final ThemeData darkGreenTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.green[700], // Dark green
  primaryColorLight: Colors.green[500], // Lighter green
  primaryColorDark: Colors.green[900], // Darkest green
  canvasColor: const Color(0xFF1F2933), // Background color
  hintColor: Colors.teal[400], // Accent color
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.white), // Text color
  ),
  // You can customize other properties like
  // buttonTheme, appBarTheme, etc.
);