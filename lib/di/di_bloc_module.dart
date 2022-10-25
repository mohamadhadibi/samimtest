import 'package:samimtest/presentation/app/application_cubit.dart';
import 'package:samimtest/presentation/auth/login/login_cubit.dart';

import 'injection_container.dart';

void getBloc() {
  get.registerFactory(() => ApplicationCubit());
  get.registerFactory(() => LoginCubit(get()));
}