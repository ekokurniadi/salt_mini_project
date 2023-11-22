import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/modules/login/domain/entities/login_entity.codegen.dart';
import 'package:salt_flutter_mini_project/modules/login/domain/usecases/login_usecases.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this._loginUseCases,
  ) : super(LoginState.initial()) {
    on<_DoLoginEvent>(_onLogin);
  }
  final LoginUseCases _loginUseCases;

  FutureOr<void> _onLogin(
    _DoLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.loading));
    final result = await _loginUseCases(event.params);

    result.fold(
      (l) => emit(
        state.copyWith(
          status: LoginStatus.failures,
          message: l.errorMessage,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: LoginStatus.success,
          message: 'Login Success',
        ),
      ),
    );
  }
}
