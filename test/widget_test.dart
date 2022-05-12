// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:fizz_buzz_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Fizz Buzz', () {
    testWidgets(
      'Find Fizz text...',
      (WidgetTester tester) async {
        // Build our app and trigger a frame.
        await tester.pumpWidget(
          const MyApp(),
        );
        final textField = find.byKey(const Key("InputFieldKey"));

        expect(textField, findsOneWidget);
        expect(find.text('FizzBuzz'), findsNothing);

        await tester.enterText(textField, '3');
        await tester.pump();

        expect(find.text('Fizz'), findsOneWidget);
      },
    );
    testWidgets(
      'Find Buzz text...',
      (WidgetTester tester) async {
        // Build our app and trigger a frame.
        await tester.pumpWidget(
          const MyApp(),
        );
        final textField = find.byKey(const Key("InputFieldKey"));

        expect(textField, findsOneWidget);
        expect(find.text('FizzBuzz'), findsNothing);

        await tester.enterText(textField, '5');
        await tester.pump();

        expect(find.text('Buzz'), findsOneWidget);
      },
    );
    testWidgets(
      'Find FizzBuzz text...',
      (WidgetTester tester) async {
        // Build our app and trigger a frame.
        await tester.pumpWidget(
          const MyApp(),
        );
        final textField = find.byKey(const Key("InputFieldKey"));

        expect(textField, findsOneWidget);
        expect(find.text('FizzBuzz'), findsNothing);

        await tester.enterText(textField, '15');
        await tester.pump();

        expect(find.text('FizzBuzz'), findsOneWidget);
      },
    );
  });
}
