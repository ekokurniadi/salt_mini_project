import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/core/usecases/usecases.dart';
import 'package:salt_flutter_mini_project/modules/login/domain/entities/login_entity.codegen.dart';
import 'package:salt_flutter_mini_project/modules/login/domain/repositories/login_repository.dart';

@injectable
class LoginUseCases implements UseCase<String, LoginEntity> {
  const LoginUseCases(this._repository);

  final LoginRepository _repository;

  @override
  Future<Either<Failures, String>> call(LoginEntity params) async {
    return await _repository.loginUser(params.toModel());
  }
}
