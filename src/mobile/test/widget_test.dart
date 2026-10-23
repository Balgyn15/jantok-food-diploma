import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jantok_diploma_preview/main.dart';

void main() {
  testWidgets('family navigation shows distinct demo members', (tester) async {
    await tester.pumpWidget(const JantokPreview());
    await tester.tap(find.byIcon(Icons.groups_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Балгын'), findsOneWidget);
    expect(find.text('Айым'), findsOneWidget);
    expect(find.text('Али'), findsOneWidget);
  });
}
