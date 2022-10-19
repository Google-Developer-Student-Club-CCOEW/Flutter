import 'package:flutter/material.dart';
import 'package:tech_tutor/core/constants/kcolors.dart';
import 'package:tech_tutor/core/constants/ktext.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgrondColor,
        elevation: 0,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  child: const KText(
                      text: 'School Club',
                      size: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.whiteColor),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      backgroundColor: AppColor.backgrondColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColor.backgrondColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: KText(
                              text: 'Login',
                              size: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColor.whiteColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    label: KText(
                                        text: 'Enter your email',
                                        size: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.whiteGreyColor),
                                    border: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    label: KText(
                                        text: 'Enter your password',
                                        size: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.whiteGreyColor),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Container();
                                  }));
                                },
                                child: const KText(
                                    text: 'Login',
                                    size: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.whiteGreyColor),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextButton(
                                onPressed: () {},
                                child: const KText(
                                    text: 'Forget Password?',
                                    size: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.whiteGreyColor),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Center(
                    child: const KText(
                        text: 'Don\'t already have an account?',
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.redIconColor),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Container(),
                            ),
                          );
                        },
                        child: const Center(
                          child: Text(
                            'Sign Up Here',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('_________Or Register using_______'),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                        border: const Border(
                          bottom: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid),
                          top: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid),
                          left: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 3,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text(
                                'Google',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
