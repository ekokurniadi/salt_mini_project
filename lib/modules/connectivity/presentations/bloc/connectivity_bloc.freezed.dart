// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  bool get internetConnection => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool internetConnection) connectionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetConnection)? connectionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetConnection)? connectionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionReceived value) connectionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionReceived value)? connectionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionReceived value)? connectionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityEventCopyWith<ConnectivityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res, ConnectivityEvent>;
  @useResult
  $Res call({bool internetConnection});
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res, $Val extends ConnectivityEvent>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetConnection = null,
  }) {
    return _then(_value.copyWith(
      internetConnection: null == internetConnection
          ? _value.internetConnection
          : internetConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionReceivedCopyWith<$Res>
    implements $ConnectivityEventCopyWith<$Res> {
  factory _$$ConnectionReceivedCopyWith(_$ConnectionReceived value,
          $Res Function(_$ConnectionReceived) then) =
      __$$ConnectionReceivedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool internetConnection});
}

/// @nodoc
class __$$ConnectionReceivedCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$ConnectionReceived>
    implements _$$ConnectionReceivedCopyWith<$Res> {
  __$$ConnectionReceivedCopyWithImpl(
      _$ConnectionReceived _value, $Res Function(_$ConnectionReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetConnection = null,
  }) {
    return _then(_$ConnectionReceived(
      null == internetConnection
          ? _value.internetConnection
          : internetConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectionReceived implements ConnectionReceived {
  const _$ConnectionReceived(this.internetConnection);

  @override
  final bool internetConnection;

  @override
  String toString() {
    return 'ConnectivityEvent.connectionReceived(internetConnection: $internetConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionReceived &&
            (identical(other.internetConnection, internetConnection) ||
                other.internetConnection == internetConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, internetConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionReceivedCopyWith<_$ConnectionReceived> get copyWith =>
      __$$ConnectionReceivedCopyWithImpl<_$ConnectionReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool internetConnection) connectionReceived,
  }) {
    return connectionReceived(internetConnection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetConnection)? connectionReceived,
  }) {
    return connectionReceived?.call(internetConnection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetConnection)? connectionReceived,
    required TResult orElse(),
  }) {
    if (connectionReceived != null) {
      return connectionReceived(internetConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionReceived value) connectionReceived,
  }) {
    return connectionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectionReceived value)? connectionReceived,
  }) {
    return connectionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionReceived value)? connectionReceived,
    required TResult orElse(),
  }) {
    if (connectionReceived != null) {
      return connectionReceived(this);
    }
    return orElse();
  }
}

abstract class ConnectionReceived implements ConnectivityEvent {
  const factory ConnectionReceived(final bool internetConnection) =
      _$ConnectionReceived;

  @override
  bool get internetConnection;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionReceivedCopyWith<_$ConnectionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectivityState {
  bool get internetConnectionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call({bool internetConnectionStatus});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetConnectionStatus = null,
  }) {
    return _then(_value.copyWith(
      internetConnectionStatus: null == internetConnectionStatus
          ? _value.internetConnectionStatus
          : internetConnectionStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectivityStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$_ConnectivityStateCopyWith(_$_ConnectivityState value,
          $Res Function(_$_ConnectivityState) then) =
      __$$_ConnectivityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool internetConnectionStatus});
}

/// @nodoc
class __$$_ConnectivityStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_ConnectivityState>
    implements _$$_ConnectivityStateCopyWith<$Res> {
  __$$_ConnectivityStateCopyWithImpl(
      _$_ConnectivityState _value, $Res Function(_$_ConnectivityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetConnectionStatus = null,
  }) {
    return _then(_$_ConnectivityState(
      internetConnectionStatus: null == internetConnectionStatus
          ? _value.internetConnectionStatus
          : internetConnectionStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectivityState implements _ConnectivityState {
  const _$_ConnectivityState({required this.internetConnectionStatus});

  @override
  final bool internetConnectionStatus;

  @override
  String toString() {
    return 'ConnectivityState(internetConnectionStatus: $internetConnectionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityState &&
            (identical(
                    other.internetConnectionStatus, internetConnectionStatus) ||
                other.internetConnectionStatus == internetConnectionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, internetConnectionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectivityStateCopyWith<_$_ConnectivityState> get copyWith =>
      __$$_ConnectivityStateCopyWithImpl<_$_ConnectivityState>(
          this, _$identity);
}

abstract class _ConnectivityState implements ConnectivityState {
  const factory _ConnectivityState(
      {required final bool internetConnectionStatus}) = _$_ConnectivityState;

  @override
  bool get internetConnectionStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectivityStateCopyWith<_$_ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}
