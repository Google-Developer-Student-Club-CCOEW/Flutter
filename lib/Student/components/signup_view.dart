import 'package:flutter/material.dart';

class StudentSignupView extends StatelessWidget {
  const StudentSignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [TextField()]),
      ),
    );
  }
}
