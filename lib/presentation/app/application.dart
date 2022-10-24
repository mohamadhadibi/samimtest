import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../di/injection_container.dart';
import '../../generated/i18n.dart';
import '../app/resources/routs.dart';
import '../auth/login/login_page.dart';
import '../country/list/country_list_page.dart';
import 'application_cubit.dart';
import 'resources/app_colors.dart';
import 'resources/theme_dark.dart';
import 'resources/theme_light.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _Application();
}

class _Application extends State<Application> {
  final ApplicationCubit _cubit = get<ApplicationCubit>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    return BlocProvider(
      create: (context) => _cubit..getApplicationUiData(),
      child: BlocBuilder<ApplicationCubit, ApplicationState>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: _cubit.localeList[state.language.languageIndex],
            title: 'Samim Test',
            debugShowCheckedModeBanner: false,
            theme: getLightTheme(state.language.font),
            darkTheme: getDarkTheme(state.language.font),
            themeMode: state.themeMode,
            home: const LoginPage(),
            onGenerateRoute: (RouteSettings settings) {
              //final arguments = settings.arguments;
              switch (settings.name) {
                case routeLogin:
                  return MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage(),
                  );

                case routeCountries:
                  return MaterialPageRoute(
                    builder: (BuildContext context) => const CountryListPage(),
                  );

                default:
                  return _getDefault(context);
              }
            },
            onUnknownRoute: (RouteSettings settings) {
              return _getDefault(context);
            },
          );
        },
      ),
    );
  }

  MaterialPageRoute _getDefault(context) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const LoginPage(),
    );
  }
}
