// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetConnection {
  bool get isConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetConnectionCopyWith<InternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionCopyWith<$Res> {
  factory $InternetConnectionCopyWith(
          InternetConnection value, $Res Function(InternetConnection) then) =
      _$InternetConnectionCopyWithImpl<$Res, InternetConnection>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$InternetConnectionCopyWithImpl<$Res, $Val extends InternetConnection>
    implements $InternetConnectionCopyWith<$Res> {
  _$InternetConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InternetConnectionCopyWith<$Res>
    implements $InternetConnectionCopyWith<$Res> {
  factory _$$_InternetConnectionCopyWith(_$_InternetConnection value,
          $Res Function(_$_InternetConnection) then) =
      __$$_InternetConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$_InternetConnectionCopyWithImpl<$Res>
    extends _$InternetConnectionCopyWithImpl<$Res, _$_InternetConnection>
    implements _$$_InternetConnectionCopyWith<$Res> {
  __$$_InternetConnectionCopyWithImpl(
      _$_InternetConnection _value, $Res Function(_$_InternetConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$_InternetConnection(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InternetConnection implements _InternetConnection {
  const _$_InternetConnection({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'InternetConnection(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternetConnection &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternetConnectionCopyWith<_$_InternetConnection> get copyWith =>
      __$$_InternetConnectionCopyWithImpl<_$_InternetConnection>(
          this, _$identity);
}

abstract class _InternetConnection implements InternetConnection {
  const factory _InternetConnection({required final bool isConnected}) =
      _$_InternetConnection;

  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$_InternetConnectionCopyWith<_$_InternetConnection> get copyWith =>
      throw _privateConstructorUsedError;
}
