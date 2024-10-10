import 'package:act2/modules/auth/code.dart';
import 'package:act2/modules/auth/login.dart';
import 'package:act2/modules/auth/reapeat_password.dart';
import 'package:act2/modules/auth/send_email.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/send_email': (context) => const SendEmail(),
        '/code': (context) => const Code(),
        '/repeat_password': (context) => const ReapeatPassword(),
      },
    );
  }
}
