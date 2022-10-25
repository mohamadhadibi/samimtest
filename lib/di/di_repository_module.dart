import 'package:samimtest/core/domain/user/repository/user_repository.dart';
import 'package:samimtest/data/user/user_repository_impl.dart';

import 'injection_container.dart';

void getRepository() {
  get.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(get()));
}
