import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:samimtest/core/domain/country/entity/country.dart';
import 'package:samimtest/core/domain/country/usecase/get_countries_usecase.dart';
import 'package:samimtest/data/country/country_remote_datasource_impl.dart';
import 'package:samimtest/data/country/country_repository_impl.dart';

void main() async {
  group('tests for get countries usecase scenarios', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    late GetCountriesUseCase getCountriesUseCase;

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
    final dioAdapter = DioAdapter(dio: dio);

    setUp(() async {

      dioAdapter.onGet(
        'countriesV2.json',
            (server) => server.reply(
          200,
          "[{\"name\": \"Afghanistan\",\"capital\": \"Kabul\",\"flag\": \"https://raw.githubusercontent.com/esmaeil-ahmadipour/restcountries/main/svg/afg.svg\"}]",
          delay: const Duration(seconds: 1),
        ),
      );

      getCountriesUseCase =
          GetCountriesUseCase(CountryRepositoryImpl(CountryRemoteDataSourceImpl(dio)));
    });

    test('should return Afghanistan country at first when call getCountries', () async {

      Country expectedResult = const Country(
        name: 'Afghanistan',
        capital: 'Kabul',
        flagUrl: 'https://raw.githubusercontent.com/esmaeil-ahmadipour/restcountries/main/svg/afg.svg',
      );

      final result = await getCountriesUseCase(null);


      Country? actualResult;
      result.fold((l) => null, (r) => actualResult = r[0]);
      expect(actualResult, equals(expectedResult));
    });
  });

}
