import 'package:dartz/dartz.dart';

import 'package:samimtest/core/domain/user/repository/params_model.dart';

import 'package:samimtest/core/utils/failure.dart';

import '../../core/domain/user/entity/user.dart';
import '../../core/domain/user/repository/user_repository.dart';
import 'user_local_datasource.dart';

class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource _userLocalDataSource;

  UserRepositoryImpl(this._userLocalDataSource);

  @override
  Future<Either<Failure, User>> loginUser(LoginUserParams params) async {
    try {
      final response = await _userLocalDataSource.loginUser(params);
      return Right(response);
    } catch (e) {
      return Left(e is Failure ? e : UnknownFailure());
    }
  }
}
