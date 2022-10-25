// DO NOT EDIT. This is code generated via package:gen_lang/generate.dart

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'messages_all.dart';

class S {
 
  static const GeneratedLocalizationsDelegate delegate = GeneratedLocalizationsDelegate();

  static S of(BuildContext context) {
    final localization = Localizations.of<S>(context, S);
    
    assert(() {
      if (localization == null) {
        throw FlutterError(
            'S requested with a context that does not include S.');
      }
      return true;
    }());
    
    return localization!;
  }
  
  static Future<S> load(Locale locale) {
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new S();
    });
  }
  
  String get app_name {
    return Intl.message("Samim Test", name: 'app_name');
  }

  String get header_login {
    return Intl.message("Login", name: 'header_login');
  }

  String get header_country_list {
    return Intl.message("Countries", name: 'header_country_list');
  }

  String get g_email {
    return Intl.message("Email", name: 'g_email');
  }

  String get g_password {
    return Intl.message("Password", name: 'g_password');
  }

  String get g_button_login {
    return Intl.message("Login", name: 'g_button_login');
  }

  String get error_validation_required_field {
    return Intl.message("Required", name: 'error_validation_required_field');
  }

  String get error_validation_not_valid {
    return Intl.message("Not valid", name: 'error_validation_not_valid');
  }

  String get error_password_not_valid {
    return Intl.message("must contain a-z|A-Z >7 chars", name: 'error_password_not_valid');
  }

  String get error_internet_connection {
    return Intl.message("No internet connection!", name: 'error_internet_connection');
  }

  String get error_disabled_user {
    return Intl.message("User is disabled!", name: 'error_disabled_user');
  }

  String get error_invalid_input {
    return Intl.message("Input is invalid!", name: 'error_invalid_input');
  }

  String get error_missed_input {
    return Intl.message("Input is missed!", name: 'error_missed_input');
  }

  String get error_authorization {
    return Intl.message("Authorization failed!", name: 'error_authorization');
  }

  String get error_not_found {
    return Intl.message("Response not found!", name: 'error_not_found');
  }

  String get error_unknown {
    return Intl.message("Unknown error happened!", name: 'error_unknown');
  }


}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
			Locale("en", ""),
			Locale("fa", ""),

    ];
  }

  LocaleListResolutionCallback listResolution({Locale? fallback}) {
    return (List<Locale>? locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale? fallback}) {
    return (Locale? locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported);
    };
  }

  Locale _resolve(Locale? locale, Locale? fallback, Iterable<Locale> supported) {
    if (locale == null || !isSupported(locale)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  @override
  Future<S> load(Locale locale) {
    return S.load(locale);
  }

  @override
  bool isSupported(Locale? locale) =>
    locale != null && supportedLocales.contains(locale);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

// ignore_for_file: unnecessary_brace_in_string_interps
