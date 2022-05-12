import 'package:fizz_buzz_flutter/theme/app_theme.dart';
import 'package:fizz_buzz_flutter/views/fizz_buzz_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fizz Buzz Game',
        themeMode: ThemeMode.dark,
        darkTheme: AppTheme.dark,
        home: const FizzBuzzView());
  }
}
