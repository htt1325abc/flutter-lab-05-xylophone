import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab05_xylophone/main.dart';

void main() {
  testWidgets('hiển thị đủ bảy phím đàn', (tester) async {
    await tester.pumpWidget(const XylophoneApp());

    expect(find.byType(TextButton), findsNWidgets(7));
    for (final note in ['DO', 'RE', 'MI', 'FA', 'SOL', 'LA', 'SI']) {
      expect(find.text(note), findsOneWidget);
    }
  });
}
