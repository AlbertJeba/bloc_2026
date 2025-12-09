import 'dart:convert';

BaseResponse baseResponseFromJson(String str) =>
    BaseResponse.fromJson(json.decode(str));
String baseResponseToJson(BaseResponse data) => json.encode(data.toJson());

/// BaseResponse
///
/// Many APIs return a standard wrapper like:
/// {
///   "status": 200,
///   "message": "success",
///   "data": { ... }
/// }
///
/// This class handles that common outer structure.
class BaseResponse {
  BaseResponse({
    this.status,
    this.message,
  });

  BaseResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
  }
  num? status;
  String? message;

  BaseResponse copyWith({
    num? status,
    String? message,
  }) =>
      BaseResponse(
        status: status ?? this.status,
        message: message ?? this.message,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    return map;
  }
}
