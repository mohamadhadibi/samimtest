class LanguageModel {
  LanguageModel({
    this.languageIso6391,
    this.iso6392,
    this.name,
    this.nativeName,
    this.iso6391,
    this.nativName,
  });

  String? languageIso6391;
  String? iso6392;
  String? name;
  String? nativeName;
  String? iso6391;
  String? nativName;

  factory LanguageModel.fromJson(Map<String, dynamic> json) => LanguageModel(
    languageIso6391: json["iso639_1"] == null ? null : json["iso639_1"],
    iso6392: json["iso639_2"],
    name: json["name"],
    nativeName: json["nativeName"] == null ? null : json["nativeName"],
    iso6391: json["iso639-1"] == null ? null : json["iso639-1"],
    nativName: json["nativName"] == null ? null : json["nativName"],
  );

  Map<String, dynamic> toJson() => {
    "iso639_1": languageIso6391 == null ? null : languageIso6391,
    "iso639_2": iso6392,
    "name": name,
    "nativeName": nativeName == null ? null : nativeName,
    "iso639-1": iso6391 == null ? null : iso6391,
    "nativName": nativName == null ? null : nativName,
  };
}