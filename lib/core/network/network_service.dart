import 'package:bloc_2026/core/exceptions/http_exception.dart';

import 'model/either.dart';
import 'model/response.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<AppException, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, Response>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  Future<Either<AppException, Response>> put(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  Future<Either<AppException, Response>> delete(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });
}
