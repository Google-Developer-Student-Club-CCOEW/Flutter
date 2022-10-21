import 'package:flutter/material.dart';

class AppColor {
  static const Color homeIconColor = Color(0xffFACD66);
  static const Color redIconColor = Color(0xffE5524A);
  static const Color backgrondColor = Color(0xff1E1E1E);
  static const Color playListContainerColor = Color(0xff609EAF);
  static const Color topChartContainerColor = Color(0xff1A1E1F);
  static const Color whiteColor = Color(0xffffffff);
  static const Color seasonColor = Color(0xff1D2123);
  static const Color lightWhiteColor = Color(0xffEFEEE0);
  static const Color whiteGreyColor = Color(0xffA4C7C6);
}

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xFF3C4048, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffce5641), //10%
      100: Color(0xffb74c3a), //20%
      200: Color(0xffa04332), //30%
      300: Color(0xff89392b), //40%
      400: Color(0xff733024), //50%
      500: Color(0xff5c261d), //60%
      600: Color(0xff451c16), //70%
      700: Color(0xff2e130e), //80%
      800: Color(0xff170907), //90%
      900: Color(0xff000000), //100%
    },
  );
}
