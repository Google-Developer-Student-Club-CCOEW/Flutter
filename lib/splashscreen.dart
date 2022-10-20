import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tech_tutor/home.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset("assets/images/logo.png"),
          const Text(
            "Tutor App",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Colors.cyan,
      nextScreen: const HomeScreen(),
      duration: 4000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.topToBottomPop,
      splashIconSize: 250,
    );
  }
}
