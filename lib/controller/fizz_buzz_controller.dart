import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FizzBuzzController extends GetxController {
  RxString response = "".obs;
  RxBool isValid = true.obs;
  final formKey = GlobalKey<FormState>();

  void onChangedTextFormField(String value, {bool testMode = false}) {
    if (testMode) {
      response.value = _fizzBuzzAlgorithm(
        int.parse(value),
      );
    } else {
      isValid.value = formKey.currentState!.validate();
      if (isValid.value) {
        response.value = _fizzBuzzAlgorithm(
          int.parse(value),
        );
      }
    }
  }

  String _fizzBuzzAlgorithm(int n) {
    if (n % 5 == 0 && n % 3 == 0) {
      return 'FizzBuzz';
    } else if (n % 5 == 0) {
      return 'Buzz';
    } else if (n % 3 == 0) {
      return 'Fizz';
    }
    return 'Wrong Sequence: $n';
  }
}
