import 'package:samimtest/data/user/user_local_datasource.dart';
import 'package:samimtest/data/user/user_local_datasource_impl.dart';

import 'injection_container.dart';

void getDataSource() {
  get.registerLazySingleton<UserLocalDataSource>(
      () => UserLocalDataSourceImpl());
}
