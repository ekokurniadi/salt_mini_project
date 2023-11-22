part of 'users_bloc.dart';

enum UsersBlocStatus { initial, loading, complete, failures }

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    required UsersBlocStatus status,
    required List<UsersEntity> users,
    required String message,
    required bool hasMaxReached,
    required int currentPage,
  }) = _UsersState;

  factory UsersState.initial() => const UsersState(
        status: UsersBlocStatus.initial,
        users: [],
        message: '',
        hasMaxReached: false,
        currentPage: 2,
      );
}
