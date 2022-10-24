import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'dimensions.dart';
import 'fade_transition_animation.dart';

ThemeData getDarkTheme(String font) => ThemeData(
      unselectedWidgetColor: AppColors.option,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: FadeTransitionBuilder(),
        TargetPlatform.android: FadeTransitionBuilder(),
      }),
      appBarTheme: const AppBarTheme(
        color: AppColors.darkBackground,
        iconTheme: IconThemeData(
          color: AppColors.gray,
          size: 24,
        ),
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      primaryColor: primary(),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: accent(),
        primary: primary(),
        brightness: Brightness.light,
      ),
      backgroundColor: AppColors.darkBackground,
      primaryIconTheme: IconThemeData(color: accent()),
      fontFamily: font,
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(AppColors.gray700),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(AppColors.gray700),
        checkColor: MaterialStateProperty.all(AppColors.white),
      ),
      buttonTheme: ButtonThemeData(
        height: 56,
        textTheme: ButtonTextTheme.accent,
        buttonColor: primary(),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        minWidth: 200,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: AppColors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 56),
          primary: primary(),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: AppColors.blue,
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: FONT_SIZE_21,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          height: 1.3,
        ),
        headline2: TextStyle(
          fontSize: FONT_SIZE_16,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          height: 1.3,
        ),
        headline3: TextStyle(
          fontSize: FONT_SIZE_14,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          height: 1.3,
        ),
        headline4: TextStyle(
          fontSize: FONT_SIZE_12,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          height: 1.3,
        ),
        subtitle1: TextStyle(
          fontSize: FONT_SIZE_12,
          fontWeight: FontWeight.w600,
          color: AppColors.gray,
          height: 1.3,
        ),
        subtitle2: TextStyle(
          fontSize: FONT_SIZE_10,
          fontWeight: FontWeight.normal,
          color: AppColors.white,
          height: 1.3,
        ),
        bodyText1: TextStyle(
          fontSize: FONT_SIZE_14,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
          height: 1.3,
        ),
        bodyText2: TextStyle(
          fontSize: FONT_SIZE_14,
          fontWeight: FontWeight.normal,
          color: AppColors.white,
          height: 1.3,
        ),
        button: TextStyle(
          fontSize: FONT_SIZE_14,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          height: 1.3,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
          fontSize: FONT_SIZE_14,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
          height: 1.3,
        ),
        hintStyle: TextStyle(
          fontSize: FONT_SIZE_14,
          fontWeight: FontWeight.normal,
          color: AppColors.white,
          height: 1.3,
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 8,
        color: AppColors.darkCard,
        shadowColor: AppColors.darkDivider.withAlpha(40),
        margin: const EdgeInsets.all(0),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.gray,
        size: 24,
      ),
      canvasColor: AppColors.darkCard,
    );
