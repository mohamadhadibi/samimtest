import 'package:flutter/material.dart';

import '../../generated/i18n.dart';
import 'failure.dart';

extension ErrorMessageHandlerImpl on Failure {
  String message(BuildContext context) {
    if (this is NetworkFailure) {
      return S.of(context).error_internet_connection;
    } else if (this is DisabledUserFailure) {
      return S.of(context).error_disabled_user;
    } else if (this is InvalidInputFailure) {
      return S.of(context).error_invalid_input;
    } else if (this is MissedInputFailure) {
      return S.of(context).error_missed_input;
    } else if (this is AuthorizeFailure) {
      return S.of(context).error_authorization;
    }
    else if (this is NotFoundFailure) {
      return S.of(context).error_not_found;
    } else if (this is UnknownFailure) {
      return S.of(context).error_unknown;
    } else {
      return '';
    }
  }
}
