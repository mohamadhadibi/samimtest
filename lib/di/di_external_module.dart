import 'package:dio/dio.dart';

import 'injection_container.dart';

void getExternal() {
  Dio dio = Dio();
  BaseOptions options = BaseOptions(
      baseUrl: 'https://raw.githubusercontent.com/esmaeil-ahmadipour/restcountries/main/json/',
      connectTimeout: 30000,
      receiveTimeout: 30000);
  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    requestBody: true,
  ));
  dio.options = options;
  get.registerLazySingleton<Dio>(() => dio);
}