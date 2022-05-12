import 'package:fizz_buzz_flutter/controller/fizz_buzz_controller.dart';
import 'package:fizz_buzz_flutter/widgets/input_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FizzBuzzView extends StatelessWidget {
  const FizzBuzzView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GetBuilder(
      init: FizzBuzzController(),
      builder: (FizzBuzzController controller) => Scaffold(
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
          padding: EdgeInsets.symmetric(
              horizontal: width > 550 ? width * 0.1 : 25.0, vertical: 10),
          child: Obx(
            () => SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Introduccion Text
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text:
                              "Introduce a number in the input to see if it's a Fizz, Buzz or FizzBuzz.",
                          style: Get.textTheme.headline5)),

                  //Input
                  Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(
                        vertical: 25.0, horizontal: 50.0),
                    child: Form(
                        key: controller.formKey,
                        child: InputNumberWidget(
                          isValid: controller.isValid,
                          onChange: controller.onChangedTextFormField,
                        )),
                  ),

                  //Result
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Result:",
                          style: Get.textTheme.headline4,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          controller.response.value,
                          style: Get.textTheme.headline4,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
