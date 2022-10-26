import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String name;
  final String capital;
  final String flagUrl;

  const Country({
    required this.name,
    required this.capital,
    required this.flagUrl,
  });

  @override
  List<Object?> get props =>
      [
        name,
        capital,
        flagUrl,
      ];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Country &&
        other.name == name &&
        other.capital == capital &&
        other.flagUrl == flagUrl;
  }

  @override
  int get hashCode => name.hashCode;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    capital: json["capital"],
    flagUrl: json["flagUrl"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() =>
      {
        "capital": capital,
        "flagUrl": flagUrl,
        "name": name,
      };
}