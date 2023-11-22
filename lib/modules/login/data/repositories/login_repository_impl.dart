import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/modules/login/data/datasources/remote/login_remote_datasources.dart';
import 'package:salt_flutter_mini_project/modules/login/data/model/login_model.codegen.dart';
import 'package:salt_flutter_mini_project/modules/login/domain/repositories/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryimpl implements LoginRepository {
  const LoginRepositoryimpl(this._dataSource);

  final LoginRemoteDataSource _dataSource;
  @override
  Future<Either<Failures, String>> loginUser(LoginModel params) async {
    return await _dataSource.loginUser(params);
  }
}
