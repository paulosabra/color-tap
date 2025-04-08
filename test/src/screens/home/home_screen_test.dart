import 'package:color_tap/src/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeScreen Widget Tests', () {
    testWidgets('HomeScreen displays "Hello there" - Text Widget', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
      expect(find.text('Hello there'), findsOneWidget);
    });

    testWidgets('Tapping anywhere changes colors', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

      final initialBackgroundColor =
          tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;
      final initialTextColor =
          tester.widget<Text>(find.text('Hello there')).style?.color;

      await tester.tap(find.byType(Scaffold));
      await tester.pump();

      final newBackgroundColor =
          tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;
      final newTextColor =
          tester.widget<Text>(find.text('Hello there')).style?.color;

      expect(newBackgroundColor, isNot(initialBackgroundColor));
      expect(newTextColor, isNot(initialTextColor));
    });
  });
}
