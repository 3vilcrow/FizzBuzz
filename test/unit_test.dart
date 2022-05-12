import 'package:fizz_buzz_flutter/controller/fizz_buzz_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Fizz Buzz',
    () {
      final controller = FizzBuzzController();

      test(
        'calculate if is Fizz...',
        () {
          controller.onChangedTextFormField("3", testMode: true);
          expect(
            controller.response.value,
            'Fizz',
          );
        },
      );
      test(
        'calculate if is Fizz part 2...',
        () {
          controller.onChangedTextFormField("369", testMode: true);
          expect(
            controller.response.value,
            'Fizz',
          );
        },
      );

      test(
        'calculate if is Buzz...',
        () {
          controller.onChangedTextFormField("5", testMode: true);
          expect(
            controller.response.value,
            'Buzz',
          );
        },
      );

      test(
        'calculate if is Buzz part 2...',
        () {
          controller.onChangedTextFormField("200", testMode: true);
          expect(
            controller.response.value,
            'Buzz',
          );
        },
      );

      test(
        'calculate if is Fizz Buzz...',
        () {
          controller.onChangedTextFormField("15", testMode: true);
          expect(
            controller.response.value,
            'FizzBuzz',
          );
        },
      );

      test(
        'calculate if is Fizz Buzz part 2...',
        () {
          controller.onChangedTextFormField("105", testMode: true);
          expect(
            controller.response.value,
            'FizzBuzz',
          );
        },
      );
    },
  );
}
