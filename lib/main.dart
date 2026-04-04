import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'pages/startup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PN School',
      theme: buildAppTheme(),
      home: const StartupPage(),
    );
  }
}
