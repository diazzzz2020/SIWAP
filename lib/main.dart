import 'package:flutter/material.dart';
import 'package:siwap/pages/login_page.dart';
import 'package:siwap/pages/onboarding_page.dart';
import 'package:siwap/pages/view/home.dart';
import 'package:siwap/pages/admin_page.dart';
import 'package:siwap/pages/addwifi_page.dart';
import 'package:siwap/pages/login_superadmin_page.dart';
import 'package:siwap/pages/superadmin_page.dart';
import 'package:siwap/pages/addadmin_page.dart';
import 'package:siwap/pages/list_admin_page.dart';
import 'package:siwap/pages/siwap_page.dart';

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
        '/login': (context) => LoginPage(),
        '/admin': (context) => AdminPage(),
        '/addwifi': (context) => const AddWifiPage(),
        '/loginsuperadmin': (context) => const LoginSuperadminPage(),
        '/superadmin': (context) => const SuperAdminPage(),
        '/addadmin': (context) => const AddAdminPage(),
        '/listadmin': (context) => const ListAdminPage(),
        '/siwap': (context) => const SiwapPage(),
      },
    );
  }
}
