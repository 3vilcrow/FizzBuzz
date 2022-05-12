import 'package:fizz_buzz_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final dark = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: FizzBuzzColors.primaryColor,
      titleTextStyle: TextStyle(
        fontSize: 24,
        color: FizzBuzzColors.textColor,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 14,
        color: FizzBuzzColors.textColor,
      ),
      headline2: TextStyle(
        fontSize: 17,
        color: FizzBuzzColors.textColor,
      ),
      headline3: TextStyle(
        fontSize: 20,
        color: FizzBuzzColors.textColor,
      ),
      headline4: TextStyle(
        fontSize: 23,
        color: FizzBuzzColors.textColor,
      ),
      headline5: TextStyle(fontSize: 26, color: FizzBuzzColors.textColor),
      headline6: TextStyle(
        fontSize: 29,
        color: FizzBuzzColors.textColor,
      ),
    ),
    scaffoldBackgroundColor: FizzBuzzColors.scaffoldBackgroundColor,
    primaryColor: FizzBuzzColors.primaryColor,
    secondaryHeaderColor: FizzBuzzColors.secondaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: FizzBuzzColors.cursorColor,
    ),
  );
}
