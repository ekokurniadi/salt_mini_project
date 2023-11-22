import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_request_params.codegen.freezed.dart';
part 'pagination_request_params.codegen.g.dart';

@freezed
class PagingRequestParams with _$PagingRequestParams {
  @JsonSerializable(includeIfNull: false)
  const factory PagingRequestParams({
    int? limit,
    @Default(2) int? page,
    String? query,
  }) = _PagingRequestParams;

  factory PagingRequestParams.fromJson(Map<String, dynamic> json) =>
      _$PagingRequestParamsFromJson(json);
}
