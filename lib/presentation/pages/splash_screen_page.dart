import 'package:flutter/material.dart';

class SpalshscreenPage extends StatelessWidget {
  static const String routeName = '/splashscreen';
  const SpalshscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
