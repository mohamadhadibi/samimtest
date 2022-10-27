import 'package:dio/dio.dart';
import 'package:samimtest/core/utils/env.dart';
import 'package:samimtest/data/country/models/country_rest_client.dart';

import 'injection_container.dart';

void getExternal() {
  Dio dio = Dio();
  BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      receiveTimeout: 30000,
  );
  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    requestBody: true,
  ));
  dio.options = options;
  get.registerLazySingleton<Dio>(() => dio);

  get.registerLazySingleton<RestClient>(() => RestClient(get()));
}