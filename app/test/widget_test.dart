// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the turn starts at X.
    expect(find.text('Current Turn: X'), findsOneWidget);
    expect(find.text('Current Turn: O'), findsNothing);

    // Tap a square.
    await tester.tap(find.byIcon(Icons.square));
    await tester.pump();

    // Verify that the turn has changed to O.
    expect(find.text('Current Turn: O'), findsNothing);
    expect(find.text('Current Turn: X'), findsOneWidget);
  });
}
