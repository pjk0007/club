import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    centerTitle: false,
    backgroundColor: Colors.white70,
    foregroundColor: Colors.lightBlue
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.vertical(
    //     bottom:Radius.circular(20)
    //   )
    // ),

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
  ),
  textTheme: TextTheme(
    subtitle1: TextStyle(
      fontSize: 20,
    )
  )
);