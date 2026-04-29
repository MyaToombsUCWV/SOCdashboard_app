import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soc_dashboard/main.dart';

void main() {

  testWidgets('App loads login screen', (WidgetTester tester) async {

    await tester.pumpWidget(
      const SentinelApp(),
    );

    expect(find.text('Sentinel SOC'), findsOneWidget);

  });

  testWidgets('Login button navigates to dashboard',
      (WidgetTester tester) async {

    await tester.pumpWidget(
      const SentinelApp(),
    );

    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    expect(
      find.text('SOC Dashboard'),
      findsOneWidget,
    );

  });

}