import 'package:flutter/material.dart';
import 'package:my_new_app/screens/splash_screen.dart';
import 'package:my_new_app/screens/signin_screen.dart';
import 'package:my_new_app/screens/signup_screen.dart';
import 'package:my_new_app/screens/forget_password_screen.dart'; // adjust class name if needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String routeSplash = '/';
  static const String routeSignIn = '/sign-in';
  static const String routeSignUp = '/sign-up';
  static const String routeForgotPassword = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoLab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
        // Add any global text/theme customization here
      ),
      initialRoute: routeSplash,
      routes: {
        routeSplash: (context) => const SplashScreenWidget(),
        routeSignIn: (context) => const SignInScreen(),
        routeSignUp: (context) => const SignUpWidget(),
        routeForgotPassword: (context) => const ForgotPasswordScreen(), // adjust if class name differs
      },
    );
  }
}