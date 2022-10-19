// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'kcolors.dart';

class KText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  const KText({
    Key? key,
    required this.text,
    required this.size,
    required this.fontWeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColor.whiteColor,
      ),
    );
  }
}
