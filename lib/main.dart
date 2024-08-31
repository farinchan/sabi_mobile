import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sabi/presentation/pages/onboarding_page.dart';
import 'package:sabi/presentation/pages/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SABI (Sastra Bicara)',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routerConfig: GoRouter(initialLocation: SigninPage.routeName, routes: [
        GoRoute(
          path: '/',
          name: OnboardingPage.routeName,
          builder: (context, state) => const OnboardingPage(),
        ),
        GoRoute(
            path: SigninPage.routeName,
            name: SigninPage.routeName,
            builder: (context, state) => const SigninPage(),
            routes: []),
      ]),
    );
  }
}
