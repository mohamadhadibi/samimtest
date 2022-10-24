part of 'application_cubit.dart';

@immutable
class ApplicationState extends Equatable {
  final Language language;
  final ThemeMode themeMode;
  const ApplicationState(this.language, this.themeMode);

  @override
  List<Object> get props => [language, themeMode];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApplicationState && other.language == language && other.themeMode == themeMode;
  }

  @override
  int get hashCode => language.hashCode;
}
