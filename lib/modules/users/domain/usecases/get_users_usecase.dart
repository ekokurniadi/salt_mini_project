import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/core/models/pagination_request_params.codegen.dart';
import 'package:salt_flutter_mini_project/core/usecases/usecases.dart';
import 'package:salt_flutter_mini_project/modules/users/data/models/users_model.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/domain/repositories/users_repository.dart';

@injectable
class GetUsersUseCase
    implements UseCase<List<UsersModel>, PagingRequestParams> {
  const GetUsersUseCase(this._repository);

  final UsersRepository _repository;

  @override
  Future<Either<Failures, List<UsersModel>>> call(
    PagingRequestParams params,
  ) async {
    return await _repository.getUsers(params);
  }
}
