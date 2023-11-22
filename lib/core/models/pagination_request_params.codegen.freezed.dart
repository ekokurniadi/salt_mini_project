// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_request_params.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PagingRequestParams _$PagingRequestParamsFromJson(Map<String, dynamic> json) {
  return _PagingRequestParams.fromJson(json);
}

/// @nodoc
mixin _$PagingRequestParams {
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingRequestParamsCopyWith<PagingRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingRequestParamsCopyWith<$Res> {
  factory $PagingRequestParamsCopyWith(
          PagingRequestParams value, $Res Function(PagingRequestParams) then) =
      _$PagingRequestParamsCopyWithImpl<$Res, PagingRequestParams>;
  @useResult
  $Res call({int? limit, int? page, String? query});
}

/// @nodoc
class _$PagingRequestParamsCopyWithImpl<$Res, $Val extends PagingRequestParams>
    implements $PagingRequestParamsCopyWith<$Res> {
  _$PagingRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingRequestParamsCopyWith<$Res>
    implements $PagingRequestParamsCopyWith<$Res> {
  factory _$$_PagingRequestParamsCopyWith(_$_PagingRequestParams value,
          $Res Function(_$_PagingRequestParams) then) =
      __$$_PagingRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, int? page, String? query});
}

/// @nodoc
class __$$_PagingRequestParamsCopyWithImpl<$Res>
    extends _$PagingRequestParamsCopyWithImpl<$Res, _$_PagingRequestParams>
    implements _$$_PagingRequestParamsCopyWith<$Res> {
  __$$_PagingRequestParamsCopyWithImpl(_$_PagingRequestParams _value,
      $Res Function(_$_PagingRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? query = freezed,
  }) {
    return _then(_$_PagingRequestParams(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PagingRequestParams implements _PagingRequestParams {
  const _$_PagingRequestParams({this.limit, this.page = 2, this.query});

  factory _$_PagingRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$_PagingRequestParamsFromJson(json);

  @override
  final int? limit;
  @override
  @JsonKey()
  final int? page;
  @override
  final String? query;

  @override
  String toString() {
    return 'PagingRequestParams(limit: $limit, page: $page, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagingRequestParams &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, page, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingRequestParamsCopyWith<_$_PagingRequestParams> get copyWith =>
      __$$_PagingRequestParamsCopyWithImpl<_$_PagingRequestParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingRequestParamsToJson(
      this,
    );
  }
}

abstract class _PagingRequestParams implements PagingRequestParams {
  const factory _PagingRequestParams(
      {final int? limit,
      final int? page,
      final String? query}) = _$_PagingRequestParams;

  factory _PagingRequestParams.fromJson(Map<String, dynamic> json) =
      _$_PagingRequestParams.fromJson;

  @override
  int? get limit;
  @override
  int? get page;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_PagingRequestParamsCopyWith<_$_PagingRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}
