import 'package:flutter/material.dart';
import 'package:musicgenie/main.dart';
import 'package:musicgenie/screens/onboarding_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: OnboardingScreen(),
      title: Text(
        'Music is in your Genes!',
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      backgroundColor: musicWhite,
      image: Image.asset('assets/images/splashlogo.PNG'),
      photoSize: 100,
    );
  }
}
