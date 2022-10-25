// DO NOT EDIT. This is code generated via package:gen_lang/generate.dart

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

final _$en = $en();

class $en extends MessageLookupByLibrary {
  get localeName => 'en';
  
  final messages = {
		"app_name" : MessageLookupByLibrary.simpleMessage("Samim Test"),
		"header_login" : MessageLookupByLibrary.simpleMessage("Login"),
		"header_country_list" : MessageLookupByLibrary.simpleMessage("Countries"),
		"g_email" : MessageLookupByLibrary.simpleMessage("Email"),
		"g_password" : MessageLookupByLibrary.simpleMessage("Password"),
		"g_button_login" : MessageLookupByLibrary.simpleMessage("Login"),
		"error_validation_required_field" : MessageLookupByLibrary.simpleMessage("Required"),
		"error_validation_not_valid" : MessageLookupByLibrary.simpleMessage("Not valid"),
		"error_password_not_valid" : MessageLookupByLibrary.simpleMessage("must contain a-z|A-Z >7 chars"),
		"error_internet_connection" : MessageLookupByLibrary.simpleMessage("No internet connection!"),
		"error_disabled_user" : MessageLookupByLibrary.simpleMessage("User is disabled!"),
		"error_invalid_input" : MessageLookupByLibrary.simpleMessage("Input is invalid!"),
		"error_missed_input" : MessageLookupByLibrary.simpleMessage("Input is missed!"),
		"error_authorization" : MessageLookupByLibrary.simpleMessage("Authorization failed!"),
		"error_not_found" : MessageLookupByLibrary.simpleMessage("Response not found!"),
		"error_unknown" : MessageLookupByLibrary.simpleMessage("Unknown error happened!"),

  };
}

final _$fa = $fa();

class $fa extends MessageLookupByLibrary {
  get localeName => 'fa';
  
  final messages = {
		"app_name" : MessageLookupByLibrary.simpleMessage("صمیم تست"),
		"header_login" : MessageLookupByLibrary.simpleMessage("ورود"),
		"header_country_list" : MessageLookupByLibrary.simpleMessage("کشورها"),
		"g_email" : MessageLookupByLibrary.simpleMessage("ایمیل"),
		"g_password" : MessageLookupByLibrary.simpleMessage("پسورد"),
		"g_button_login" : MessageLookupByLibrary.simpleMessage("ورود"),
		"error_validation_required_field" : MessageLookupByLibrary.simpleMessage("الزامیست"),
		"error_validation_not_valid" : MessageLookupByLibrary.simpleMessage("نامعتبر است"),
		"error_password_not_valid" : MessageLookupByLibrary.simpleMessage("باید شامل a-z|A-Z و >7 کارکتر باشد"),
		"error_internet_connection" : MessageLookupByLibrary.simpleMessage("عدم دسترسی به اینترنت!"),
		"error_disabled_user" : MessageLookupByLibrary.simpleMessage("کاربر غیرفعال است!"),
		"error_invalid_input" : MessageLookupByLibrary.simpleMessage("ورودی معتبر نیست!"),
		"error_missed_input" : MessageLookupByLibrary.simpleMessage("همه موارد خواسته شده ارسال نشده اند!"),
		"error_authorization" : MessageLookupByLibrary.simpleMessage("هویت تایید نشد!"),
		"error_not_found" : MessageLookupByLibrary.simpleMessage("پاسخی یافت نشد!"),
		"error_unknown" : MessageLookupByLibrary.simpleMessage("خطای نامشخصی رخ داده است!"),

  };
}



typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
	"en": () => Future.value(null),
	"fa": () => Future.value(null),

};

MessageLookupByLibrary? _findExact(localeName) {
  switch (localeName) {
    case "en":
        return _$en;
    case "fa":
        return _$fa;

    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
      localeName,
          (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? Future.value(false) : lib());

  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);

  return Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}

// ignore_for_file: unnecessary_brace_in_string_interps
