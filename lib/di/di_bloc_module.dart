import 'package:samimtest/presentation/app/application_cubit.dart';

import 'injection_container.dart';

void getBloc() {
  get.registerFactory(() => ApplicationCubit());
}