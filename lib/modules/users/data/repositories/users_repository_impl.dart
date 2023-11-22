import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/core/models/pagination_request_params.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/data/datasources/remote/users_remote_datasources.dart';
import 'package:salt_flutter_mini_project/modules/users/data/models/users_model.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/domain/repositories/users_repository.dart';

@LazySingleton(as: UsersRepository)
class UsersReposityImpl implements UsersRepository {
  const UsersReposityImpl(this._dataSource);

  final UsersRemoteDataSource _dataSource;

  @override
  Future<Either<Failures, List<UsersModel>>> getUsers(
    PagingRequestParams params,
  ) async {
    return await _dataSource.getUsers(params);
  }
}
