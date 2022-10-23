import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tech_tutor/Profile/profile.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset("assets/images/logo.png"),
      backgroundColor: Colors.white,
      nextScreen: const ProfilePage(),
      duration: 4000,
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 250,
    );
  }
}
