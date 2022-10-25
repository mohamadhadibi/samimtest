import '../../../core/utils/enum_values.dart';

enum Region { ASIA, EUROPE, AFRICA, OCEANIA, AMERICAS, POLAR }

final regionValues = EnumValues({
  "Africa": Region.AFRICA,
  "Americas": Region.AMERICAS,
  "Asia": Region.ASIA,
  "Europe": Region.EUROPE,
  "Oceania": Region.OCEANIA,
  "Polar": Region.POLAR
});

class RegionalBloc {
  RegionalBloc({
    this.acronym,
    this.name,
    this.otherNames,
    this.otherAcronyms,
  });

  Acronym? acronym;
  Name? name;
  List<OtherName>? otherNames;
  List<OtherAcronym>? otherAcronyms;

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
    acronym: acronymValues.map[json["acronym"]],
    name: nameValues.map[json["name"]],
    otherNames: json["otherNames"] == null
        ? null
        : List<OtherName>.from(
        json["otherNames"].map((x) => otherNameValues.map[x])),
    otherAcronyms: json["otherAcronyms"] == null
        ? null
        : List<OtherAcronym>.from(
        json["otherAcronyms"].map((x) => otherAcronymValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "acronym": acronymValues.reverse[acronym],
    "name": nameValues.reverse[name],
    "otherNames": otherNames == null
        ? null
        : List<dynamic>.from(
        otherNames!.map((x) => otherNameValues.reverse[x])),
    "otherAcronyms": otherAcronyms == null
        ? null
        : List<dynamic>.from(
        otherAcronyms!.map((x) => otherAcronymValues.reverse[x])),
  };
}

enum Acronym {
  SAARC,
  EU,
  CEFTA,
  AU,
  AL,
  CARICOM,
  USAN,
  EEU,
  CAIS,
  ASEAN,
  NAFTA,
  PA,
  EFTA
}

final acronymValues = EnumValues({
  "AL": Acronym.AL,
  "ASEAN": Acronym.ASEAN,
  "AU": Acronym.AU,
  "CAIS": Acronym.CAIS,
  "CARICOM": Acronym.CARICOM,
  "CEFTA": Acronym.CEFTA,
  "EEU": Acronym.EEU,
  "EFTA": Acronym.EFTA,
  "EU": Acronym.EU,
  "NAFTA": Acronym.NAFTA,
  "PA": Acronym.PA,
  "SAARC": Acronym.SAARC,
  "USAN": Acronym.USAN
});

enum Name {
  SOUTH_ASIAN_ASSOCIATION_FOR_REGIONAL_COOPERATION,
  EUROPEAN_UNION,
  CENTRAL_EUROPEAN_FREE_TRADE_AGREEMENT,
  AFRICAN_UNION,
  ARAB_LEAGUE,
  CARIBBEAN_COMMUNITY,
  UNION_OF_SOUTH_AMERICAN_NATIONS,
  EURASIAN_ECONOMIC_UNION,
  CENTRAL_AMERICAN_INTEGRATION_SYSTEM,
  ASSOCIATION_OF_SOUTHEAST_ASIAN_NATIONS,
  NORTH_AMERICAN_FREE_TRADE_AGREEMENT,
  PACIFIC_ALLIANCE,
  EUROPEAN_FREE_TRADE_ASSOCIATION
}

final nameValues = EnumValues({
  "African Union": Name.AFRICAN_UNION,
  "Arab League": Name.ARAB_LEAGUE,
  "Association of Southeast Asian Nations":
  Name.ASSOCIATION_OF_SOUTHEAST_ASIAN_NATIONS,
  "Caribbean Community": Name.CARIBBEAN_COMMUNITY,
  "Central American Integration System":
  Name.CENTRAL_AMERICAN_INTEGRATION_SYSTEM,
  "Central European Free Trade Agreement":
  Name.CENTRAL_EUROPEAN_FREE_TRADE_AGREEMENT,
  "Eurasian Economic Union": Name.EURASIAN_ECONOMIC_UNION,
  "European Free Trade Association": Name.EUROPEAN_FREE_TRADE_ASSOCIATION,
  "European Union": Name.EUROPEAN_UNION,
  "North American Free Trade Agreement":
  Name.NORTH_AMERICAN_FREE_TRADE_AGREEMENT,
  "Pacific Alliance": Name.PACIFIC_ALLIANCE,
  "South Asian Association for Regional Cooperation":
  Name.SOUTH_ASIAN_ASSOCIATION_FOR_REGIONAL_COOPERATION,
  "Union of South American Nations": Name.UNION_OF_SOUTH_AMERICAN_NATIONS
});

enum OtherAcronym { UNASUR, UNASUL, UZAN, EAEU, SICA }

final otherAcronymValues = EnumValues({
  "EAEU": OtherAcronym.EAEU,
  "SICA": OtherAcronym.SICA,
  "UNASUL": OtherAcronym.UNASUL,
  "UNASUR": OtherAcronym.UNASUR,
  "UZAN": OtherAcronym.UZAN
});

enum OtherName {
  EMPTY,
  UNION_AFRICAINE,
  UNIO_AFRICANA,
  UNIN_AFRICANA,
  UMOJA_WA_AFRIKA,
  OTHER_NAME,
  JMI_AT_AD_DUWAL_AL_ARABYAH,
  LEAGUE_OF_ARAB_STATES,
  COMUNIDAD_DEL_CARIBE,
  COMMUNAUT_CARIBENNE,
  CARIBISCHE_GEMEENSCHAP,
  UNIN_DE_NACIONES_SURAMERICANAS,
  UNIO_DE_NAES_SUL_AMERICANAS,
  UNIE_VAN_ZUID_AMERIKAANSE_NATIES,
  SOUTH_AMERICAN_UNION,
  SISTEMA_DE_LA_INTEGRACIN_CENTROAMERICANA,
  TRATADO_DE_LIBRE_COMERCIO_DE_AMRICA_DEL_NORTE,
  ACCORD_DE_LIBRE_CHANGE_NORD_AMRICAIN,
  ALIANZA_DEL_PACFICO
}

final otherNameValues = EnumValues({
  "Accord de Libre-échange Nord-Américain":
  OtherName.ACCORD_DE_LIBRE_CHANGE_NORD_AMRICAIN,
  "Alianza del Pacífico": OtherName.ALIANZA_DEL_PACFICO,
  "Caribische Gemeenschap": OtherName.CARIBISCHE_GEMEENSCHAP,
  "Communauté Caribéenne": OtherName.COMMUNAUT_CARIBENNE,
  "Comunidad del Caribe": OtherName.COMUNIDAD_DEL_CARIBE,
  "الاتحاد الأفريقي": OtherName.EMPTY,
  "Jāmiʻat ad-Duwal al-ʻArabīyah": OtherName.JMI_AT_AD_DUWAL_AL_ARABYAH,
  "League of Arab States": OtherName.LEAGUE_OF_ARAB_STATES,
  "جامعة الدول العربية": OtherName.OTHER_NAME,
  "Sistema de la Integración Centroamericana,":
  OtherName.SISTEMA_DE_LA_INTEGRACIN_CENTROAMERICANA,
  "South American Union": OtherName.SOUTH_AMERICAN_UNION,
  "Tratado de Libre Comercio de América del Norte":
  OtherName.TRATADO_DE_LIBRE_COMERCIO_DE_AMRICA_DEL_NORTE,
  "Umoja wa Afrika": OtherName.UMOJA_WA_AFRIKA,
  "Unie van Zuid-Amerikaanse Naties":
  OtherName.UNIE_VAN_ZUID_AMERIKAANSE_NATIES,
  "Unión Africana": OtherName.UNIN_AFRICANA,
  "Unión de Naciones Suramericanas": OtherName.UNIN_DE_NACIONES_SURAMERICANAS,
  "Union africaine": OtherName.UNION_AFRICAINE,
  "União Africana": OtherName.UNIO_AFRICANA,
  "União de Nações Sul-Americanas": OtherName.UNIO_DE_NAES_SUL_AMERICANAS
});