import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_card_app/main.dart';

void main() {
  testWidgets('shows a responsive fictional profile and contact rows', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    await tester.pumpWidget(const ProfileCardApp());

    expect(find.text('Kavya V.'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('KV'), findsOneWidget);
    expect(find.text('kavya@example.com'), findsOneWidget);
    expect(find.text('+1 555 010 2030'), findsOneWidget);
    expect(find.text('Chennai, India'), findsOneWidget);

    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}
