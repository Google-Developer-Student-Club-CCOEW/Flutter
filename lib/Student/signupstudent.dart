import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_tutor/Student/components/signup_view.dart';
import 'package:tech_tutor/Student/components/widgets/gtextfield.dart';
import 'package:tech_tutor/colors.dart';

class SignUpStudent extends StatefulWidget {
  const SignUpStudent({Key? key}) : super(key: key);

  @override
  State<SignUpStudent> createState() => _SignUpStudentState();
}

class _SignUpStudentState extends State<SignUpStudent> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: SvgPicture.asset(
                    'assets/images/reading_book.svg',
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 55,
                        child: GTextField(
                          controller: username,
                          label: 'username',
                          hintText: 'johndoe',
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        height: 50,
                        child: GTextField(
                          controller: password,
                          label: 'password',
                          hintText: 'password',
                          isPassword: true,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
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
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            color: darkColor,
                          ),
                          children: const [
                            TextSpan(
                              text: 'Already have an account? ',
                            ),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
