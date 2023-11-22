part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.getUsersFromRemote(
    PagingRequestParams params,
  ) = _GetUsersFromRemoteEvent;
}
