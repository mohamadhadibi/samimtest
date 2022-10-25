import 'package:samimtest/data/country/country_remote_datasource.dart';
import 'package:samimtest/data/country/country_remote_datasource_impl.dart';
import 'package:samimtest/data/user/user_local_datasource.dart';
import 'package:samimtest/data/user/user_local_datasource_impl.dart';

import 'injection_container.dart';

void getDataSource() {
  get.registerLazySingleton<UserLocalDataSource>(
      () => UserLocalDataSourceImpl());
  get.registerLazySingleton<CountryRemoteDataSource>(
      () => CountryRemoteDataSourceImpl(get()));
}
