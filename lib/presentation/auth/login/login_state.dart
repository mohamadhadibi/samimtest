part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class StateInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class StateLoading extends LoginState {
  @override
  List<Object> get props => [];
}

class StateError extends LoginState {
  final Failure failure;

  const StateError(this.failure);

  @override
  List<Object> get props => [failure];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StateError && other.failure == failure;
  }

  @override
  int get hashCode => failure.hashCode;
}

class StateShowLoginForm extends LoginState {
  @override
  List<Object> get props => [];
}

class StateLoginDone extends LoginState {
  @override
  List<Object> get props => [];
}