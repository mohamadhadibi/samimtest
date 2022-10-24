import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const Color greenOne = Color(0xFF20534a);
  static const Color greenTwo = Color(0xFF86ae7a);
  static const Color greenThree = Color(0xFFcdeabe);

  static const Color whiteOne = Color(0xFFfefffb);

  static const Color blue = Color(0xFF60bafb);
  static const Color orange = Color(0xFFeebc4d);

  static const Color gray = Color(0xFF747985);
  static const Color gray700 = Color(0xFF524E5A);
  static const Color option = Color(0xFFa8a8a8);

  static const Color black = Color(0xFF505050);
  static const Color white = Color(0xFFffffff);

  static const Color lightBackground = Color(0xFFf7f7fa);
  static const Color darkBackground = Color(0xff0f2621);

  static const Color lightCard = Color(0xFFffffff);
  static const Color darkCard = Color(0xff164139);

  static const Color darkDivider = Color(0xff1e564a);
  static const Color lightDivider = Color(0xFFd9d9d9);

  static const Color transparent = Color(0x00000000);

}

Color primary() {
  return AppColors.greenOne;
}

Color accent() {
  return AppColors.orange;
}
