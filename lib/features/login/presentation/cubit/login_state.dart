part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {
  const LoginInitial();
}

final class LoginLoadingState extends LoginState {
  const LoginLoadingState();
}

class LoginLoaded extends LoginState {
  final String emailError;
  final String passwordError;
  final bool isLoading;
  final bool isError;
  final String errorMessage;

  const LoginLoaded({
    this.emailError = '',
    this.passwordError = '',
    this.isLoading = false,
    this.isError = false,
    this.errorMessage = '',
  });

  LoginLoaded copyWith({
    String? emailError,
    String? passwordError,
    bool? isLoading,
    bool? isError,
    String? errorMessage,
  }) {
    return LoginLoaded(
      emailError: emailError ?? this.emailError,
      passwordError: passwordError ?? this.passwordError,
      isLoading: isLoading ?? this.isLoading,
      isError: isError ?? this.isError,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
        emailError,
        passwordError,
        isLoading,
        isError,
        errorMessage,
      ];
}

final class LoginSuccess extends LoginState {
  const LoginSuccess(this.loginData);

  final LoginResponse loginData;

  @override
  List<Object> get props => [loginData];
}

class LoginError extends LoginState {
  final String message;

  const LoginError({required this.message});

  @override
  List<Object> get props => [message];
}
