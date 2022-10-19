import 'package:flutter/material.dart';

class UserChoice extends StatelessWidget {
  const UserChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3C4048),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Who are you?',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            getButton(cb: () {}, title: 'Student'),
            getButton(cb: () {}, title: 'Teacher'),
            getButton(cb: () {}, title: 'Parent'),
          ],
        ),
      ),
    );
  }

  Container getButton({
    required void Function()? cb,
    required String title,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 65,
      width: 370,
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff00ABB3),
          fixedSize: const Size(350, 60),
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10,
          shadowColor: const Color(0xff00ABB3),
        ),
        onPressed: cb,
        child: getButtonHeading(title: title),
      ),
    );
  }

  Text getButtonHeading({required String title}) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
