import 'package:flutter/material.dart';
import 'package:tech_tutor/colors.dart';

class GTextField extends StatelessWidget {
  final String label, hintText;
  final bool? isPassword;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final TextEditingController? controller;

  const GTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.onTap,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword!,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text(label),
        contentPadding: const EdgeInsets.only(left: 24),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: blueColor.withOpacity(0.5))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: blueColor.withOpacity(0.5))),
        hintText: hintText,
      ),
    );
  }
}
