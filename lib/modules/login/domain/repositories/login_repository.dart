import 'package:dartz/dartz.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/modules/login/data/model/login_model.codegen.dart';

abstract class LoginRepository {
  Future<Either<Failures, String>> loginUser(LoginModel params);
}
