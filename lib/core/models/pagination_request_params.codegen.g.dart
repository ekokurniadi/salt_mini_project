// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pagination_request_params.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PagingRequestParams _$$_PagingRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_PagingRequestParams(
      limit: json['limit'] as int?,
      page: json['page'] as int? ?? 2,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$_PagingRequestParamsToJson(
    _$_PagingRequestParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('page', instance.page);
  writeNotNull('query', instance.query);
  return val;
}
