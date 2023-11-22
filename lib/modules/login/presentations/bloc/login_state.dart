part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failures }

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required LoginStatus status,
    required String message,
  }) = _LoginState;
  factory LoginState.initial() => const LoginState(
        status: LoginStatus.initial,
        message: '',
      );
}
