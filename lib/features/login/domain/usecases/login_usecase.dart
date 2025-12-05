import 'package:bloc_2026/core/exceptions/http_exception.dart';
import 'package:bloc_2026/core/network/model/either.dart';
import 'package:bloc_2026/features/login/data/models/login_request.dart';
import 'package:bloc_2026/features/login/data/models/login_response.dart';
import 'package:bloc_2026/features/login/domain/repositories/login_repository.dart';

class LoginUseCases {
  final LoginRepository _loginRepository;

  const LoginUseCases(this._loginRepository);

  Future<Either<AppException, LoginResponse>> login({
    required LoginRequest user,
  }) async {
    return _loginRepository.loginUser(user: user);
  }
}
