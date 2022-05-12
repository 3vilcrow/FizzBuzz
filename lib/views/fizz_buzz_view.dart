import 'package:fizz_buzz_flutter/widgets/input_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        "Introduce a number in the input to see if it's a Fizz, Buzz or FizzBuzz.",
                    style: Get.textTheme.headline5)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
              child: InputNumberWidget(),
            ),
          ],
        ),
      ),
    ));
  }
}
