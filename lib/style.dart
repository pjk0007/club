import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    elevation: 0.0,
    centerTitle: false,
    color: Colors.lightBlue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom:Radius.circular(20)
      )
    ),

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
  )
);