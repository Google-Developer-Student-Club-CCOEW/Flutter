import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_tutor/Student/components/signup_view.dart';
import 'package:tech_tutor/colors.dart';

class SignUpStudent extends StatefulWidget {
  const SignUpStudent({Key? key}) : super(key: key);

  @override
  State<SignUpStudent> createState() => _SignUpStudentState();
}

class _SignUpStudentState extends State<SignUpStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/reading_book.svg',
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const StudentSignupView(),
                              ),
                            );
                          },
                          color: darkColor,
                          child: const Text(
                            'Continue as Student',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 0,
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
