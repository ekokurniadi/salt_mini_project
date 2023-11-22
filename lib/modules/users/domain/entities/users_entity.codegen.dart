import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_entity.codegen.freezed.dart';

@freezed
class UsersEntity with _$UsersEntity {
  const factory UsersEntity({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _UsersEntity;
}
