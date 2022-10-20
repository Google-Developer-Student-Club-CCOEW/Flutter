import 'package:flutter/material.dart';
import 'package:tech_tutor/Student/components/widgets/gtextfield.dart';
import 'package:tech_tutor/colors.dart';

class Step2 extends StatefulWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  var roll = TextEditingController();
  var division = 'Division 1';

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Division 1"), value: "Division 1"),
      const DropdownMenuItem(child: Text("Division 2"), value: "Division 2"),
      const DropdownMenuItem(child: Text("Division 3"), value: "Division 3"),
      const DropdownMenuItem(child: Text("Division 4"), value: "Division 4"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Almost there...',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 40),
          GTextField(
              label: 'Roll no(c no)', hintText: 'FlutterDev', controller: roll),
          const SizedBox(height: 16),
          SizedBox(
            height: 50,
            child: InputDecorator(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8),
                label: const Text('Standard/Division'),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: blueColor.withOpacity(0.5))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: blueColor.withOpacity(0.5))),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isDense: true,
                  value: division,
                  onChanged: (value) {
                    setState(() {
                      division = value!;
                    });
                  },
                  items: dropdownItems,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
