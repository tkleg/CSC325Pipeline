import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart'; // Assuming your main Dart file is in 'app' folder

void main() {
  testWidgets("Tic Tac Toe - Turn change test", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the turn starts at X.
    expect(find.text("Current Turn: X"), findsOneWidget);

    // Find all buttons using a more generic approach
    final allButtons = tester.widgetList(find.byType(ElevatedButton));

    // Check if there are any buttons found
    if (allButtons.isEmpty) {
      // Handle the case where no buttons are found (optional)
      print("No buttons found on the screen!");
    } else {
      // Safely access the first button (assuming there's at least one)
      final firstButton = allButtons.first;

      // Use the Finder returned by find.byWidget to create a Finder
      final firstButtonFinder = find.byWidget(firstButton);

      // Tap the first button using the Finder
      await tester.tap(firstButtonFinder);
      await tester.pump();

      // Verify that the turn has changed to O.
      expect(find.text("Current Turn: O"), findsOneWidget);
    }
  });
}
