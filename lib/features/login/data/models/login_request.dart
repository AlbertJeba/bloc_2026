import 'dart:convert';
LoginRequest loginRequestFromJson(String str) => LoginRequest.fromJson(json.decode(str));
String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());
class LoginRequest {
  LoginRequest({
      this.identifier, 
      this.password, 
      this.deviceToken,});

  LoginRequest.fromJson(dynamic json) {
    identifier = json['identifier'];
    password = json['password'];
  }
  String? identifier;
  String? password;
  String? deviceToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['password'] = password;
    return map;
  }

}