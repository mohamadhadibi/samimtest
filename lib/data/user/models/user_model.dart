import '../../../core/domain/user/entity/user.dart';

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.username,
    required this.email,
    required this.state,
  });

  String username;
  String email;
  String state;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    username: json["username"],
    email: json["email"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "email": email,
    "state": state,
  };

  User mapToUser() {
    return User(
      username: username,
      email: email,
      state: state,
    );
  }
}

List<User> mapToUser(List<UserModel> list) {
  List<User> items = [];
  for (UserModel model in list) {
    items.add(model.mapToUser());
  }
  return items;
}
