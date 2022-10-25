import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../core/domain/language/entity/language.dart';
import '../../data/app/app_local_data.dart';

part 'application_state.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit()
      : super(ApplicationState(
            langList[currentLanguageIndex], currentThemeMode));

  List<Locale> localeList = [
    const Locale('fa'),
    const Locale('en'),
  ];

  getApplicationUiData() async {
    emit(ApplicationState(currentLanguage, currentThemeMode));
  }

  changeTheme(ThemeMode theme) {
    currentThemeMode = theme;
    emit(ApplicationState(currentLanguage, currentThemeMode));
  }

  changeLanguage(Language language) {
    currentLanguage = language;
    emit(ApplicationState(currentLanguage, currentThemeMode));
  }

}


