import 'package:dartz/dartz.dart';

import '../../../utils/failure.dart';
import '../../../utils/usecase.dart';
import '../entity/user.dart';
import '../repository/params_model.dart';
import '../repository/user_repository.dart';

class LoginUserUseCase implements UseCase<User, LoginUserParams> {
  final UserRepository userRepository;

  LoginUserUseCase(this.userRepository);

  @override
  Future<Either<Failure, User>> call(LoginUserParams params) async {
    return await userRepository.loginUser(params);
  }
}
