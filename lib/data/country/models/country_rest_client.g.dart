// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_rest_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      name: json['name'] as String?,
      capital: json['capital'] as String?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'flag': instance.flag,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??=
        'https://raw.githubusercontent.com/esmaeil-ahmadipour/restcountries/main/json/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<CountryModel>> getCountries() async {
    Response response = await _dio.get('countriesV2.json');
    List<CountryModel> data = countryModelFromJson(
        response.data, (jsonItem) => CountryModel.fromJson(jsonItem));
    return data;
  }
}
