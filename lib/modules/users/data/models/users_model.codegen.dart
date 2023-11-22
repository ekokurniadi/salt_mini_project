import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salt_flutter_mini_project/modules/users/domain/entities/users_entity.codegen.dart';

part 'users_model.codegen.freezed.dart';
part 'users_model.codegen.g.dart';

@freezed
class UsersModel with _$UsersModel {
  const factory UsersModel({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _UsersModel;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
}

extension UsersModelX on UsersModel {
  UsersEntity toDomain() => UsersEntity(
        id: id,
        email: email,
        firstName: firstName,
        lastName: lastName,
        avatar: avatar,
      );
}
