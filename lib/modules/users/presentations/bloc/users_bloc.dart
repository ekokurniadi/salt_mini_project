import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/models/pagination_request_params.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/data/models/users_model.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/domain/entities/users_entity.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/domain/usecases/get_users_usecase.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(
    this._getUsersUseCase,
  ) : super(UsersState.initial()) {
    on<_GetUsersFromRemoteEvent>(_onGetUsersFromRemote);
  }
  final GetUsersUseCase _getUsersUseCase;

  FutureOr<void> _onGetUsersFromRemote(
    _GetUsersFromRemoteEvent event,
    Emitter<UsersState> emit,
  ) async {
    emit(state.copyWith(status: UsersBlocStatus.loading));

    final result = await _getUsersUseCase(event.params);

    result.fold(
      (l) => emit(
        state.copyWith(
          status: UsersBlocStatus.failures,
          message: l.errorMessage,
        ),
      ),
      (r) => r.isEmpty
          ? emit(
              state.copyWith(
                hasMaxReached: true,
                status: UsersBlocStatus.complete,
              ),
            )
          : emit(
              state.copyWith(
                status: UsersBlocStatus.complete,
                users: [
                  ...state.users,
                  ...List<UsersEntity>.from(
                    r.map(
                      (e) => e.toDomain(),
                    ),
                  ),
                ],
                currentPage: event.params.page ?? 2,
              ),
            ),
    );
  }
}
