import 'package:flutter/material.dart';
import 'package:tech_tutor/Constants/colors.dart';

class SignUpTeacher extends StatefulWidget {
  const SignUpTeacher({Key? key}) : super(key: key);

  @override
  State<SignUpTeacher> createState() => _SignUpTeacherState();
}

class _SignUpTeacherState extends State<SignUpTeacher> {
  late String birthDateInString;
  late DateTime birthDate;
  bool isDateSelected= false;
  late String DOJInString;
  late DateTime DOJ;
  bool isDOJSelected= false;
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
            "Teacher",
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
                hintText: "Enter your Full Name",
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
                hintText: "Enter your Email Address",
                icon: Icon(
                  Icons.email_outlined,
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
          GestureDetector(
            onTap: () async {
              final datePick = await showDatePicker(
                  context: context,
                  initialDate: new DateTime.now(),
                  firstDate: new DateTime(1900),
                  lastDate: new DateTime(2100)
              );
              if (datePick != null) {
                setState(() {
                  birthDate = datePick;
                  isDateSelected = true;
                  // put it here
                  birthDateInString =
                  "${birthDate.month}/${birthDate.day}/${birthDate
                      .year}"; // 08/14/2019

                });
              }
            },
            child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black
                ),
                enabled: false,
                autocorrect: false,
                enableSuggestions: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Select your Birth Date",
                  labelText: isDateSelected ?  birthDateInString : null,
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.date_range,
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
                hintText: "Enter your Education",
                icon: Icon(
                  Icons.school_outlined,
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
          GestureDetector(
            onTap: () async {
              final datePick = await showDatePicker(
                  context: context,
                  initialDate: new DateTime.now(),
                  firstDate: new DateTime(1900),
                  lastDate: new DateTime(2100)
              );
              if (datePick != null) {
                setState(() {
                  DOJ = datePick;
                  isDOJSelected = true;
                  // put it here
                  DOJInString =
                  "${DOJ.month}/${DOJ.day}/${DOJ
                      .year}"; // 08/14/2019

                });
              }
            },
            child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black
                ),
                enabled: false,
                autocorrect: false,
                enableSuggestions: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Select your Date of Joining",
                  labelText: isDOJSelected ?  DOJInString : null,
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.date_range,
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
                hintText: "Enter your Department",
                icon: Icon(
                  Icons.local_library_outlined,
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