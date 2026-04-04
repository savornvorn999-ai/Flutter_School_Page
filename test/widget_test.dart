import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/startup_page.dart';
import 'package:flutter_application_1/widgets/pn_logo.dart';

void main() {
  testWidgets('app launches on the startup screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(StartupPage), findsOneWidget);
    expect(find.byType(PnLogo), findsOneWidget);
    expect(find.text('ចាប់ផ្តើម'), findsOneWidget);
  });

  testWidgets('start button navigates to the login screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byKey(const ValueKey('startButton')));
    await tester.pumpAndSettle();

    expect(find.byType(LoginPage), findsOneWidget);
    expect(find.byType(PnLogo), findsOneWidget);
    expect(find.byKey(const ValueKey('usernameField')), findsOneWidget);
    expect(find.byKey(const ValueKey('passwordField')), findsOneWidget);
    expect(find.byKey(const ValueKey('loginButton')), findsOneWidget);
    expect(find.text('ចូលគណនី'), findsOneWidget);
  });
}
