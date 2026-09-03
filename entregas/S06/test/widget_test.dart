// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:proyecto1/app.dart';

void main() {
  testWidgets('muestra el resumen financiero', (WidgetTester tester) async {
    await tester.pumpWidget(const InkashApp());

    expect(find.text('Hola, Kevin'), findsOneWidget);
    expect(find.text('Q2,796.50'), findsOneWidget);
    expect(find.text('Últimos movimientos'), findsOneWidget);
  });
}
