import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('App has correct title in AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    expect(find.text('Tic Tac Toe'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
  });

  testWidgets('Game mode toggle buttons work', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    // Should find "Single Player" and "Two Player" toggle buttons.
    expect(find.text('Single Player'), findsOneWidget);
    expect(find.text('Two Player'), findsOneWidget);
  });
}
