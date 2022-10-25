import '../../core/domain/user/entity/user.dart';
import '../../core/domain/user/repository/params_model.dart';

abstract class UserLocalDataSource {
  Future<User> loginUser(LoginUserParams params);
}
