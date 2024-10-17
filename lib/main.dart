import 'package:act2/firebase_options.dart';
import 'package:act2/modules/auth/register.dart';
import 'package:act2/navigation/navigation.dart';
import 'package:act2/widgets/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:act2/modules/auth/code.dart';
import 'package:act2/modules/auth/login.dart';
import 'package:act2/modules/auth/reapeat_password.dart';
import 'package:act2/modules/auth/send_email.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/menu': (context) => const Navigation(),
        '/send_email': (context) => const SendEmail(),
        '/code': (context) => const Code(),
        '/repeat_password': (context) => const ReapeatPassword(),
      },
    );
  }
}
