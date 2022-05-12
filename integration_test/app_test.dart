import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:fizz_buzz_flutter/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'end-to-end test',
    () {
      testWidgets(
        'Try to get FizzBuzz text...',
        (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();

          final textField = find.byKey(const Key("InputFieldKey"));

          expect(textField, findsOneWidget);

          await tester.enterText(textField, '330');

          await tester.pumpAndSettle();

          expect(find.text('FizzBuzz'), findsOneWidget);
        },
      );
    },
  );
}
