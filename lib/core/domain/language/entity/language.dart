import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final int languageIndex;
  final String name;
  final String font;

  const Language({
    required this.languageIndex,
    required this.name,
    required this.font,
  }) : super();

  @override
  List<Object?> get props => [languageIndex, name, font];

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Language && o.languageIndex == languageIndex;
  }

  @override
  int get hashCode => languageIndex.hashCode;
}
