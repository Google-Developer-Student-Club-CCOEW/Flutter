import 'package:flutter/material.dart';
import 'package:tech_tutor/Student/components/widgets/gtextfield.dart';
import 'package:intl/intl.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  var fullName = TextEditingController();
  var email = TextEditingController();
  var birthDate = TextEditingController();

  @override
  void initState() {
    birthDate.text = "";
    super.initState();
  }

  _showDatePicker(context) async {
    DateTime? bday = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime.now(),
    );

    if (bday != null) {
      birthDate.text = DateFormat('dd/MM/yyyy').format(bday);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Personal Details',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 40),
          const GTextField(label: 'fullname', hintText: 'johndoe'),
          const SizedBox(height: 10),
          GTextField(
            controller: birthDate,
            label: 'birthdate',
            hintText: '',
            onTap: () => _showDatePicker(context),
          ),
          const SizedBox(height: 10),
          const GTextField(label: 'email', hintText: 'john@gmail.com'),
          const SizedBox(height: 10),
          const GTextField(
              label: 'Phone',
              hintText: '+234XXXXXXXXX'), // implement phone for all countries
        ],
      ),
    );
  }
}
