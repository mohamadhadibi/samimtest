import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/user/entity/user.dart';
import '../../../core/domain/user/repository/params_model.dart';
import '../../../core/domain/user/usecase/login_user_usecase.dart';
import '../../../core/utils/failure.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUserUseCase _loginUserUseCase;

  LoginCubit(this._loginUserUseCase) : super(StateInitial());

  final LoginUserParams _loginUserParams = LoginUserParams();

  setEmail(String? email) {
    _loginUserParams.email = email;
  }

  setPassword(String? password) {
    _loginUserParams.password = password;
  }

  loginUser() async {
    emit(StateLoading());
    await Future.delayed(const Duration(seconds: 3));
    final result = await _loginUserUseCase.call(_loginUserParams);
    result.fold((failure) {
      emit(StateError(failure));
    }, (User user) {
      if(user.state == 'enable') {
        emit(StateLoginDone());
      }else {
        emit(StateError(DisabledUserFailure()));
      }
    });
  }
}
