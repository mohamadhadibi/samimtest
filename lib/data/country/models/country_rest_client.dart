import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:samimtest/core/utils/env.dart';

import '../../../core/domain/country/entity/country.dart';

part 'country_rest_client.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("countriesV2.json")
  Future<List<CountryModel>> getCountries();
}

@JsonSerializable()
class CountryModel {
  String? name;
  String? capital;
  String? flag;

  CountryModel({
    this.name,
    this.capital,
    this.flag,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
  Country mapToCountry() {
    return Country(
      name: name?? '',
      capital: capital?? '',
      flagUrl: flag?? '',
    );
  }

}

List<CountryModel> countryModelFromJson(
    String str, Function fromJson) =>
    List<CountryModel>.from(json.decode(str).map((x) => fromJson(x)));

List<Country> mapToCountry(List<CountryModel> list) {
  List<Country> items = [];
  for (CountryModel model in list) {
    items.add(model.mapToCountry());
  }
  return items;
}
