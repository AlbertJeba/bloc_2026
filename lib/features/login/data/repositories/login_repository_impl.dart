import 'package:bloc_2026/core/exceptions/http_exception.dart';
import 'package:bloc_2026/core/network/model/either.dart';
import 'package:bloc_2026/features/login/data/datasource/login_remote_data_source.dart';
import 'package:bloc_2026/features/login/data/models/login_request.dart';
import 'package:bloc_2026/features/login/data/models/login_response.dart';
import 'package:bloc_2026/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginRemoteDataSource _loginDataSource;

  LoginRepositoryImpl(this._loginDataSource);

  @override
  Future<Either<AppException, LoginResponse>> loginUser({
    required LoginRequest user,
  }) {
    return _loginDataSource.login(user: user);
  }
}
