import 'package:flutter/material.dart';
import 'package:siwap/pages/login_page.dart';
import 'package:siwap/pages/onboarding_page.dart';
import 'package:siwap/pages/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}
