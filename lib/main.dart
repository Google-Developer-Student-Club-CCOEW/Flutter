import 'package:flutter/material.dart';
import 'package:tech_tutor/login.dart';

import 'core/constants/kcolors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechTutor',
      theme: ThemeData(
          primarySwatch: Palette.kToDark,
          scaffoldBackgroundColor: const Color(0xFFB2B2B2)),
      home: const LoginPage(),
    );
  }
}
