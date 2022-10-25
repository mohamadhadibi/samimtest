
class TranslationsModel {
  TranslationsModel({
    this.br,
    this.de,
    this.es,
    this.fa,
    this.fr,
    this.hr,
    this.it,
    this.ja,
    this.nl,
    this.pt,
    this.ru,
    this.pl,
    this.cs,
    this.zh,
    this.hu,
    this.se,
  });

  String? br;
  String? de;
  String? es;
  String? fa;
  String? fr;
  String? hr;
  String? it;
  String? ja;
  String? nl;
  String? pt;
  String? ru;
  String? pl;
  String? cs;
  String? zh;
  String? hu;
  String? se;

  factory TranslationsModel.fromJson(Map<String, dynamic> json) => TranslationsModel(
    br: json["br"],
    de: json["de"],
    es: json["es"],
    fa: json["fa"],
    fr: json["fr"],
    hr: json["hr"],
    it: json["it"],
    ja: json["ja"],
    nl: json["nl"],
    pt: json["pt"],
    ru: json["ru"],
    pl: json["pl"],
    cs: json["cs"],
    zh: json["zh"],
    hu: json["hu"],
    se: json["se"],
  );

  Map<String, dynamic> toJson() => {
    "br": br,
    "de": de,
    "es": es,
    "fa": fa,
    "fr": fr,
    "hr": hr,
    "it": it,
    "ja": ja,
    "nl": nl,
    "pt": pt,
    "ru": ru,
    "pl": pl,
    "cs": cs,
    "zh": zh,
    "hu": hu,
    "se": se,
  };
}