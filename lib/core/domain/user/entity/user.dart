import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String username;
  final String email;
  final String state;

  const User({
    required this.username,
    required this.email,
    required this.state,
  });

  @override
  List<Object?> get props =>
      [
        username,
        email,
        state,
      ];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.username == username &&
        other.email == email &&
        other.state == state;
  }

  @override
  int get hashCode => username.hashCode;

}