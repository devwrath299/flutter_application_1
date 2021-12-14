import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData get themeData => ThemeData(
          appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ));
}
