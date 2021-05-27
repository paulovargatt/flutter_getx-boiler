import 'package:get_app_flutter/app/data/models/user_model.dart';

class Auth {
  User user;
  String message;
  String accessToken;
  String tokenType;
  int expiresIn;

  Auth({
      this.user,
      this.message,
      this.accessToken,
      this.tokenType,
      this.expiresIn,
      });

  Auth.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}
