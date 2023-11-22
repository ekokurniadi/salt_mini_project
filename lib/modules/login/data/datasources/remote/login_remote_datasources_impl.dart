import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/core/constant/preference_constant.dart';
import 'package:salt_flutter_mini_project/core/constant/url_constant.dart';
import 'package:salt_flutter_mini_project/core/error/failures.dart';
import 'package:salt_flutter_mini_project/core/extensions/dio_response_extension.dart';
import 'package:salt_flutter_mini_project/core/helpers/dio_helper.dart';
import 'package:salt_flutter_mini_project/injector.dart';
import 'package:salt_flutter_mini_project/modules/login/data/datasources/remote/login_remote_datasources.dart';
import 'package:salt_flutter_mini_project/modules/login/data/model/login_model.codegen.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  const LoginRemoteDataSourceImpl(this._dio);
  final Dio _dio;
  @override
  Future<Either<Failures, String>> loginUser(LoginModel params) async {
    try {
      final response =
          await _dio.post(URLConstant.login, data: params.toJson());

      if (response.isOk) {
        final token = response.data['token'];
        await getIt<SharedPreferences>().setString(
          PreferenceConstant.token,
          token,
        );
        DioHelper.setDioHeader(
          token,
        );
        return right(token);
      }

      return left(
        ServerFailure(
          errorMessage: response.data['error'],
        ),
      );
    } on DioException catch (e) {
      final msg = DioHelper.exception(e);
      return left(
        ServerFailure(
          errorMessage: msg,
        ),
      );
    } catch (e) {
      return left(
        UnexpectedFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
