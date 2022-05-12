import 'package:flutter/material.dart';

class FizzBuzzView extends StatelessWidget {
  const FizzBuzzView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          title: const Text(
            "Fizz Buzz Game",
          )),
      body: Column(),
    ));
  }
}
