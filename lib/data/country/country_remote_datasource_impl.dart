import 'package:dio/dio.dart';
import 'package:samimtest/core/domain/country/entity/country.dart';
import 'package:samimtest/data/country/country_remote_datasource.dart';
import 'package:samimtest/data/country/models/country_model.dart';

import '../../core/utils/failure.dart';

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final Dio dio;

  CountryRemoteDataSourceImpl(this.dio);

  @override
  Future<List<Country>> getCountries() async {
    //if (!await networkInfo.isConnected) throw NetworkFailure();
    try {
      Response response = await dio.get('countriesV2.json');

      List<CountryModel> data = countryModelFromJson(
          response.data, (jsonItem) => CountryModel.fromJson(jsonItem));

      return Future.value(mapToCountry(data));

    } on DioError catch (e) {
      print('error 1 : ${e.toString()}');
      throw UnknownFailure();
    } catch (e) {
      print('error 2 : ${e.toString()}');
      throw UnknownFailure();
    }
  }
}
