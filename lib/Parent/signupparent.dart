import 'package:flutter/material.dart';

class SignUpParent extends StatefulWidget {
  const SignUpParent({Key? key}) : super(key: key);

  @override
  State<SignUpParent> createState() => _SignUpParentState();
}

class _SignUpParentState extends State<SignUpParent> {
  static const greyWhiteColor = Color(0xFFEAEAEA);
  static const lightGreyColor = Color(0xFFB2B2B2);
  static const darkGreyColor = Color(0xFF3C4048);
  static const tealColor = Color(0xFF00ABB3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
            "Sign Up"
        ),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back,
              color: lightGreyColor
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Parent",
            style: TextStyle(
                color: darkGreyColor,
                fontSize: 30
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              style: TextStyle(
                  color: Colors.black
              ),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter your  Name",
                icon: Icon(
                  Icons.account_box,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              style: TextStyle(
                  color: Colors.black
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Student Name",
                icon: Icon(
                  Icons.person_pin_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              keyboardType: TextInputType.name,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter your Relation to Student",
                icon: Icon(
                  Icons.family_restroom_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter your Mobile No.",
                icon: Icon(
                  Icons.contact_phone_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter your Email Address",
                icon: Icon(
                  Icons.mail_outline,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              keyboardType: TextInputType.name,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter Username",
                icon: Icon(
                  Icons.person,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              textAlign: TextAlign.start,
              autocorrect: false,
              enableSuggestions: true,
              keyboardType: TextInputType.name,
              style: TextStyle(
                  color: Colors.black
              ),
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                icon: Icon(
                  Icons.password,
                  size: 24.0,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: darkGreyColor.withAlpha(60),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
                child: Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 20,
                        color: greyWhiteColor
                    )
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(tealColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )
                    )
                ),
                onPressed: () => null
            ),
          )
        ],
      ),
    );
  }
}
