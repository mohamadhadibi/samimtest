import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:samimtest/core/domain/user/entity/user.dart';
import 'package:samimtest/core/domain/user/repository/params_model.dart';
import 'package:samimtest/core/domain/user/usecase/login_user_usecase.dart';
import 'package:samimtest/data/user/user_local_datasource_impl.dart';
import 'package:samimtest/data/user/user_repository_impl.dart';

void main() async {
  group('tests for login usecase scenarios', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    late LoginUserUseCase loginUserUseCase;
    setUp(() async {
      loginUserUseCase =
          LoginUserUseCase(UserRepositoryImpl(UserLocalDataSourceImpl()));
    });

    test('should return User when call login', () async {
      LoginUserParams params = LoginUserParams(
        email: 'mina@gmail.com',
        password: 'abcDefGhI',
      );

      User expectedResult = const User(
        email: 'mina@gmail.com',
        state: 'enable',
        username: 'mina',
      );

      final actualResult = await loginUserUseCase(params);

      expect(actualResult, equals(Right(expectedResult)));
    });
  });
}
