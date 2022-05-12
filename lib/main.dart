import 'package:fizz_buzz_flutter/views/fizz_buzz.dart';
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
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 25, 25, 25),
            titleTextStyle: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(77, 255, 255, 255),
            ),
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 18, 18),
          iconTheme: const IconThemeData(
            color: Colors.black,
            size: 24,
          ),
          primaryIconTheme: const IconThemeData(
            color: Colors.black,
            size: 24,
          ),
          primarySwatch: Colors.blue,
        ),
        home: const FizzBuzzView());
  }
}
