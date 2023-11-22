// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  PagingRequestParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagingRequestParams params) getUsersFromRemote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagingRequestParams params)? getUsersFromRemote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagingRequestParams params)? getUsersFromRemote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsersFromRemoteEvent value)
        getUsersFromRemote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsersFromRemoteEvent value)? getUsersFromRemote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsersFromRemoteEvent value)? getUsersFromRemote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersEventCopyWith<UsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
  @useResult
  $Res call({PagingRequestParams params});

  $PagingRequestParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PagingRequestParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingRequestParamsCopyWith<$Res> get params {
    return $PagingRequestParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetUsersFromRemoteEventCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory _$$_GetUsersFromRemoteEventCopyWith(_$_GetUsersFromRemoteEvent value,
          $Res Function(_$_GetUsersFromRemoteEvent) then) =
      __$$_GetUsersFromRemoteEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagingRequestParams params});

  @override
  $PagingRequestParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$_GetUsersFromRemoteEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$_GetUsersFromRemoteEvent>
    implements _$$_GetUsersFromRemoteEventCopyWith<$Res> {
  __$$_GetUsersFromRemoteEventCopyWithImpl(_$_GetUsersFromRemoteEvent _value,
      $Res Function(_$_GetUsersFromRemoteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$_GetUsersFromRemoteEvent(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PagingRequestParams,
    ));
  }
}

/// @nodoc

class _$_GetUsersFromRemoteEvent implements _GetUsersFromRemoteEvent {
  const _$_GetUsersFromRemoteEvent(this.params);

  @override
  final PagingRequestParams params;

  @override
  String toString() {
    return 'UsersEvent.getUsersFromRemote(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUsersFromRemoteEvent &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUsersFromRemoteEventCopyWith<_$_GetUsersFromRemoteEvent>
      get copyWith =>
          __$$_GetUsersFromRemoteEventCopyWithImpl<_$_GetUsersFromRemoteEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PagingRequestParams params) getUsersFromRemote,
  }) {
    return getUsersFromRemote(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PagingRequestParams params)? getUsersFromRemote,
  }) {
    return getUsersFromRemote?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PagingRequestParams params)? getUsersFromRemote,
    required TResult orElse(),
  }) {
    if (getUsersFromRemote != null) {
      return getUsersFromRemote(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsersFromRemoteEvent value)
        getUsersFromRemote,
  }) {
    return getUsersFromRemote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsersFromRemoteEvent value)? getUsersFromRemote,
  }) {
    return getUsersFromRemote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsersFromRemoteEvent value)? getUsersFromRemote,
    required TResult orElse(),
  }) {
    if (getUsersFromRemote != null) {
      return getUsersFromRemote(this);
    }
    return orElse();
  }
}

abstract class _GetUsersFromRemoteEvent implements UsersEvent {
  const factory _GetUsersFromRemoteEvent(final PagingRequestParams params) =
      _$_GetUsersFromRemoteEvent;

  @override
  PagingRequestParams get params;
  @override
  @JsonKey(ignore: true)
  _$$_GetUsersFromRemoteEventCopyWith<_$_GetUsersFromRemoteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  UsersBlocStatus get status => throw _privateConstructorUsedError;
  List<UsersEntity> get users => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get hasMaxReached => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {UsersBlocStatus status,
      List<UsersEntity> users,
      String message,
      bool hasMaxReached,
      int currentPage});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? message = null,
    Object? hasMaxReached = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersBlocStatus,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UsersEntity>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hasMaxReached: null == hasMaxReached
          ? _value.hasMaxReached
          : hasMaxReached // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UsersBlocStatus status,
      List<UsersEntity> users,
      String message,
      bool hasMaxReached,
      int currentPage});
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? message = null,
    Object? hasMaxReached = null,
    Object? currentPage = null,
  }) {
    return _then(_$_UsersState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersBlocStatus,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UsersEntity>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hasMaxReached: null == hasMaxReached
          ? _value.hasMaxReached
          : hasMaxReached // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState(
      {required this.status,
      required this.users,
      required this.message,
      required this.hasMaxReached,
      required this.currentPage});

  @override
  final UsersBlocStatus status;
  @override
  final List<UsersEntity> users;
  @override
  final String message;
  @override
  final bool hasMaxReached;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'UsersState(status: $status, users: $users, message: $message, hasMaxReached: $hasMaxReached, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.hasMaxReached, hasMaxReached) ||
                other.hasMaxReached == hasMaxReached) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(users),
      message,
      hasMaxReached,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);
}

abstract class _UsersState implements UsersState {
  const factory _UsersState(
      {required final UsersBlocStatus status,
      required final List<UsersEntity> users,
      required final String message,
      required final bool hasMaxReached,
      required final int currentPage}) = _$_UsersState;

  @override
  UsersBlocStatus get status;
  @override
  List<UsersEntity> get users;
  @override
  String get message;
  @override
  bool get hasMaxReached;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
