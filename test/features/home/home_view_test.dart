import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hadiya/app/app_widget.dart';
import 'package:hadiya/features/home/presentation/home_view.dart';

void main() {
  testWidgets('home shows en + ltr when the device is English', (tester) async {
    tester.platformDispatcher.localesTestValue = const [Locale('en')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);

    await tester.pumpWidget(const HadiyaApp());
    await tester.pump();

    expect(find.byType(HomeView), findsOneWidget);
    expect(find.textContaining('ltr'), findsOneWidget);
  });
}
