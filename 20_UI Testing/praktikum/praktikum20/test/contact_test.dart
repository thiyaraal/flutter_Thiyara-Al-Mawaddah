import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum20/contact.dart';

void main() {
  testWidgets(
    'Mencoba button submit',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Contact()
      ));
      await tester.press(find.text('Submit'));
      await tester.pump();
    },
  );
    testWidgets(
    'Mencari judul Create New Contacts',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Contact()
      ));
      expect(find.text('Create New Contacts'), findsOneWidget);
    },
  );

      testWidgets(
    'Mencari judul List Contacts',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Contact()
      ));
      expect(find.text('List Contact'), findsOneWidget);
    },
  );
}

