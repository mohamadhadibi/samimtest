import 'package:samimtest/core/domain/user/entity/user.dart';

import 'package:samimtest/core/domain/user/repository/params_model.dart';
import 'package:samimtest/core/utils/failure.dart';

import 'models/user_model.dart';
import 'user_local_datasource.dart';
import 'package:flutter/services.dart' show rootBundle;

class UserLocalDataSourceImpl implements UserLocalDataSource {
  @override
  Future<User> loginUser(LoginUserParams params) async {
    var jsonText = await rootBundle.loadString('res/assets/users.json');
    List<User> data =
        mapToUser(userModelFromJson(jsonText)); //json.decode(jsonText);
    if (data.isEmpty) {
      throw AuthorizeFailure();
    } else {
      for (User user in data) {
        if (user.email == params.email) {
          return user;
        }
      }
      throw AuthorizeFailure();
    }
  }
}
