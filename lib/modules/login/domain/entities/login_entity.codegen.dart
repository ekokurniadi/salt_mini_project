import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salt_flutter_mini_project/modules/login/data/model/login_model.codegen.dart';

part 'login_entity.codegen.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required String email,
    required String password,
  }) = _LoginEntity;
}

extension LoginEntityX on LoginEntity {
  LoginModel toModel() => LoginModel(
        email: email,
        password: password,
      );
}
