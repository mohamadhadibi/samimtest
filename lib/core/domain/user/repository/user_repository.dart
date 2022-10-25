import 'package:dartz/dartz.dart';

import '../../../utils/failure.dart';
import '../entity/user.dart';
import 'params_model.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> loginUser(LoginUserParams params);
}