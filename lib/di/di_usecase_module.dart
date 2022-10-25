import 'package:samimtest/core/domain/country/usecase/get_countries_usecase.dart';

import '../core/domain/user/usecase/login_user_usecase.dart';
import 'injection_container.dart';

void getUseCase() {
  get.registerLazySingleton(() => LoginUserUseCase(get()));
  get.registerLazySingleton(() => GetCountriesUseCase(get()));
}
