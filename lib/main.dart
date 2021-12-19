import 'package:flutter/material.dart';
import 'package:koperasi/screens/authentication/signin_screen.dart';
import 'package:koperasi/screens/welcome/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Koperasi",
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const OnboardingScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingScreen(),
        '/signin': (context) => SignInScreen()
      },
    );
  }
}
