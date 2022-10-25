
import 'package:flutter/material.dart';

import '../../core/domain/language/entity/language.dart';

ThemeMode currentThemeMode = ThemeMode.light;
Language currentLanguage = langList[currentLanguageIndex];
int currentLanguageIndex = languageFarsi;

const int languageFarsi = 0;
const int languageEnglish = 1;

var langList = [
  const Language(
    languageIndex: languageFarsi,
    name: 'فارسی',
    font: 'IRANSans',
  ),
  const Language(
    languageIndex: languageEnglish,
    name: 'English',
    font: 'SF-Pro-Display',
  ),
];
