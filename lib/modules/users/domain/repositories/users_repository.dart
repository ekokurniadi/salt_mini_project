import 'package:dartz/dartz.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/core/models/pagination_request_params.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/data/models/users_model.codegen.dart';

abstract class UsersRepository {
  Future<Either<Failures, List<UsersModel>>> getUsers(
    PagingRequestParams params,
  );
}
