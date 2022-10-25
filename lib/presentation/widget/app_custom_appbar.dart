import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samimtest/data/app/app_local_data.dart';
import 'package:samimtest/presentation/app/application_cubit.dart';
import 'package:samimtest/presentation/app/resources/app_colors.dart';
import 'package:samimtest/presentation/app/resources/routs.dart';

AppBar getAppbar(String title, BuildContext context) {
  return AppBar(
    backgroundColor: primary(),
    elevation: 0,
    automaticallyImplyLeading: true,
    centerTitle: true,
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline2?.copyWith(color: AppColors.white),
    ),
    actions: [
      InkWell(
        onTap: () {
          if ((currentLanguageIndex == languageFarsi)) {
            currentLanguageIndex = languageEnglish;
          } else {
            currentLanguageIndex = languageFarsi;
          }
          BlocProvider.of<ApplicationCubit>(context)
              .changeLanguage(langList[currentLanguageIndex]);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: 40,
          child: Image.asset(getPng('img_change_language')),
        ),
      ),
      Switch(value: (currentThemeMode == ThemeMode.dark), onChanged: (value) {
        if(value) {
          currentThemeMode = ThemeMode.dark;
        }else {
          currentThemeMode = ThemeMode.light;
        }
        BlocProvider.of<ApplicationCubit>(context)
            .changeTheme(currentThemeMode);
      }),
    ],
  );
}
