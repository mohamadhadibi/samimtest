import 'dart:convert';

import 'package:samimtest/core/domain/country/entity/country.dart';

import 'currency_model.dart';
import 'language_model.dart';
import 'region_models.dart';
import 'translations_model.dart';

List<CountryModel> countryModelFromJson(
    String str, Function fromJson) =>
    List<CountryModel>.from(json.decode(str).map((x) => fromJson(x)));

String countryModelToJson(List<CountryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryModel {
  CountryModel({
    this.alpha2Code,
    this.alpha3Code,
    this.altSpellings,
    this.area,
    this.borders,
    this.callingCodes,
    this.capital,
    this.currencies,
    this.demonym,
    this.flag,
    this.gini,
    this.languages,
    this.latlng,
    this.name,
    this.nativeName,
    this.numericCode,
    this.population,
    this.region,
    this.regionalBlocs,
    this.subregion,
    this.timezones,
    this.topLevelDomain,
    this.translations,
    this.cioc,
  });

  String? alpha2Code;
  String? alpha3Code;
  List<String>? altSpellings;
  double? area;
  List<String>? borders;
  List<String>? callingCodes;
  String? capital;
  List<CurrencyModel>? currencies;
  String? demonym;
  String? flag;
  double? gini;
  List<LanguageModel>? languages;
  List<double>? latlng;
  String? name;
  String? nativeName;
  String? numericCode;
  int? population;
  Region? region;
  List<RegionalBloc>? regionalBlocs;
  String? subregion;
  List<String>? timezones;
  List<String>? topLevelDomain;
  TranslationsModel? translations;
  String? cioc;

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        altSpellings: (json["altSpellings"]!=null)?List<String>.from(json["altSpellings"].map((x) => x)):null,
        area: (json["area"] == null) ? null : json["area"].toDouble(),
        borders: (json["borders"]!=null)?List<String>.from(json["borders"].map((x) => x)):null,
        callingCodes: (json["callingCodes"]!=null)?List<String>.from(json["callingCodes"].map((x) => x)):null,
        capital: json["capital"],
        currencies: (json["currencies"]!=null)?List<CurrencyModel>.from(
            json["currencies"].map((x) => CurrencyModel.fromJson(x))):null,
        demonym: json["demonym"],
        flag: json["flag"],
        gini: (json["gini"] == null) ? null : json["gini"].toDouble(),
        languages: (json["languages"]!=null)?List<LanguageModel>.from(
            json["languages"].map((x) => LanguageModel.fromJson(x))):null,
        latlng: (json["latlng"]!=null)?List<double>.from(json["latlng"].map((x) => x.toDouble())):null,
        name: json["name"],
        nativeName: json["nativeName"],
        numericCode: json["numericCode"] == null ? null : json["numericCode"],
        population: json["population"],
        region: regionValues.map[json["region"]],
        regionalBlocs: json["regionalBlocs"] == null
            ? null
            : List<RegionalBloc>.from(
                json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
        subregion: json["subregion"],
        timezones: (json["timezones"]!=null)?List<String>.from(json["timezones"].map((x) => x)):null,
        topLevelDomain: (json["topLevelDomain"]!=null)?List<String>.from(json["topLevelDomain"].map((x) => x)):null,
        translations: (json["translations"]!=null)?TranslationsModel.fromJson(json["translations"]):null,
        cioc: json["cioc"] == null ? null : json["cioc"],
      );

  Map<String, dynamic> toJson() => {
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "altSpellings": (altSpellings!=null)?List<dynamic>.from(altSpellings!.map((x) => x)):null,
        "area": area == null ? null : area,
        "borders": (borders!=null)?List<dynamic>.from(borders!.map((x) => x)):null,
        "callingCodes": (callingCodes!=null)?List<dynamic>.from(callingCodes!.map((x) => x)):null,
        "capital": capital,
        "currencies": (currencies!=null)?List<dynamic>.from(currencies!.map((x) => x.toJson())):null,
        "demonym": demonym,
        "flag": flag,
        "gini": gini == null ? null : gini,
        "languages": (languages!=null)?List<dynamic>.from(languages!.map((x) => x.toJson())):null,
        "latlng": (latlng!=null)?List<dynamic>.from(latlng!.map((x) => x)):null,
        "name": name,
        "nativeName": nativeName,
        "numericCode": numericCode == null ? null : numericCode,
        "population": population,
        "region": regionValues.reverse[region],
        "regionalBlocs": regionalBlocs == null
            ? null
            : List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
        "subregion": subregion,
        "timezones": (timezones!=null)?List<dynamic>.from(timezones!.map((x) => x)):null,
        "topLevelDomain": (topLevelDomain!=null)?List<dynamic>.from(topLevelDomain!.map((x) => x)):null,
        "translations": (translations!=null)?translations!.toJson():null,
        "cioc": cioc == null ? null : cioc,
      };

  Country mapToCountry() {
    return Country(
      name: name?? '',
      capital: capital?? '',
      flagUrl: flag?? '',
    );
  }
}

List<Country> mapToCountry(List<CountryModel> list) {
  List<Country> items = [];
  for (CountryModel model in list) {
    items.add(model.mapToCountry());
  }
  return items;
}
