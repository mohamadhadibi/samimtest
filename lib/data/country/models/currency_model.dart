
class CurrencyModel {
  CurrencyModel({
    this.code,
    this.name,
    this.symbol,
  });

  String? code;
  String? name;
  String? symbol;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
    code: json["code"] == null ? null : json["code"],
    name: json["name"] == null ? null : json["name"],
    symbol: json["symbol"] == null ? null : json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "code": code == null ? null : code,
    "name": name == null ? null : name,
    "symbol": symbol == null ? null : symbol,
  };
}