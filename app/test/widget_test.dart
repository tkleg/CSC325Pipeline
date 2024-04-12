import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

void main() {
  testWidgets("Tic Tac Toe - Turn change test", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the turn starts at X.
    expect(find.text("Current Turn: X"), findsOneWidget);

    // Find the first button (assuming squares are the first widgets)
    final firstButton = find.firstWidget<ElevatedButton>();

    // Tap the first button and rebuild the widget tree
    await tester.tap(firstButton);
    await tester.pump();

    // Verify that the turn has changed to O.
    expect(find.text("Current Turn: O"), findsOneWidget);
  });
}
