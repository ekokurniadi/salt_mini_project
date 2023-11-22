import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/constant/url_constant.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/core/extensions/dio_response_extension.dart';
import 'package:salt_flutter_mini_project/core/helpers/dio_helper.dart';
import 'package:salt_flutter_mini_project/core/models/pagination_request_params.codegen.dart';
import 'package:salt_flutter_mini_project/modules/users/data/datasources/remote/users_remote_datasources.dart';
import 'package:salt_flutter_mini_project/modules/users/data/models/users_model.codegen.dart';

@LazySingleton(as: UsersRemoteDataSource)
class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  const UsersRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<Either<Failures, List<UsersModel>>> getUsers(
    PagingRequestParams params,
  ) async {
    try {
      final response = await _dio.get(
        URLConstant.users,
        queryParameters: params.toJson(),
      );

      if (response.isOk) {
        final result = List<UsersModel>.from(
          response.data['data'].map(
            (e) => UsersModel.fromJson(e),
          ),
        );
        return right(result);
      }

      return left(
        ServerFailure(
          errorMessage: response.data['error'],
        ),
      );
    } on DioException catch (e) {
      final msg = DioHelper.exception(e);
      return left(ServerFailure(errorMessage: msg));
    } catch (e) {
      return left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }
}
