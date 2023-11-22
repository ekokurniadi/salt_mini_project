// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import 'core/helpers/dio_helper.dart' as _i8;
import 'core/module/network_module.dart' as _i24;
import 'core/module/storage_module.dart' as _i25;
import 'modules/connectivity/data/datasources/connectivity_datasource.dart'
    as _i4;
import 'modules/connectivity/data/repositories/connectivity_repository_impl.dart'
    as _i6;
import 'modules/connectivity/domain/repositories/connectivity_repository.dart'
    as _i5;
import 'modules/connectivity/domain/usecases/stream_internet_connection.dart'
    as _i15;
import 'modules/connectivity/presentations/bloc/connectivity_bloc.dart' as _i20;
import 'modules/login/data/datasources/remote/login_remote_datasources.dart'
    as _i9;
import 'modules/login/data/datasources/remote/login_remote_datasources_impl.dart'
    as _i10;
import 'modules/login/data/repositories/login_repository_impl.dart' as _i12;
import 'modules/login/domain/repositories/login_repository.dart' as _i11;
import 'modules/login/domain/usecases/login_usecases.dart' as _i13;
import 'modules/login/presentations/bloc/login_bloc.dart' as _i22;
import 'modules/users/data/datasources/remote/users_remote_datasource_impl.dart'
    as _i17;
import 'modules/users/data/datasources/remote/users_remote_datasources.dart'
    as _i16;
import 'modules/users/data/repositories/users_repository_impl.dart' as _i19;
import 'modules/users/domain/repositories/users_repository.dart' as _i18;
import 'modules/users/domain/usecases/get_users_usecase.dart' as _i21;
import 'modules/users/presentations/bloc/users_bloc.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  final storageModule = _$StorageModule();
  gh.lazySingleton<_i3.Connectivity>(() => networkModule.connectivity);
  gh.lazySingleton<_i4.ConnectivityDataSource>(
      () => _i4.ConnectivityDataSourceImpl(get<_i3.Connectivity>()));
  gh.lazySingleton<_i5.ConnectivityRepository>(
      () => _i6.ConnectivityRepositoryImpl(get<_i4.ConnectivityDataSource>()));
  gh.lazySingleton<_i7.Dio>(() => networkModule.dio);
  gh.factory<_i8.DioHelper>(() => _i8.DioHelper());
  gh.lazySingleton<_i9.LoginRemoteDataSource>(
      () => _i10.LoginRemoteDataSourceImpl(get<_i7.Dio>()));
  gh.lazySingleton<_i11.LoginRepository>(
      () => _i12.LoginRepositoryimpl(get<_i9.LoginRemoteDataSource>()));
  gh.factory<_i13.LoginUseCases>(
      () => _i13.LoginUseCases(get<_i11.LoginRepository>()));
  await gh.lazySingletonAsync<_i14.SharedPreferences>(
    () => storageModule.sharedPreference,
    preResolve: true,
  );
  gh.factory<_i15.StreamInternetConnection>(
      () => _i15.StreamInternetConnection(get<_i5.ConnectivityRepository>()));
  gh.lazySingleton<_i16.UsersRemoteDataSource>(
      () => _i17.UsersRemoteDataSourceImpl(get<_i7.Dio>()));
  gh.lazySingleton<_i18.UsersRepository>(
      () => _i19.UsersReposityImpl(get<_i16.UsersRemoteDataSource>()));
  gh.lazySingleton<_i20.ConnectivityBloc>(
      () => _i20.ConnectivityBloc(get<_i15.StreamInternetConnection>()));
  gh.factory<_i21.GetUsersUseCase>(
      () => _i21.GetUsersUseCase(get<_i18.UsersRepository>()));
  gh.factory<_i22.LoginBloc>(() => _i22.LoginBloc(get<_i13.LoginUseCases>()));
  gh.factory<_i23.UsersBloc>(() => _i23.UsersBloc(get<_i21.GetUsersUseCase>()));
  return get;
}

class _$NetworkModule extends _i24.NetworkModule {}

class _$StorageModule extends _i25.StorageModule {}
