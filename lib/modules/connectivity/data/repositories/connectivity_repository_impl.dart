import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/modules/connectivity/data/datasources/connectivity_datasource.dart';
import 'package:salt_flutter_mini_project/modules/connectivity/domain/entities/connectivity.codegen.dart';
import 'package:salt_flutter_mini_project/modules/connectivity/domain/repositories/connectivity_repository.dart';

@LazySingleton(as: ConnectivityRepository)
class ConnectivityRepositoryImpl implements ConnectivityRepository {
  const ConnectivityRepositoryImpl(this._connectivityDataSource);
  final ConnectivityDataSource _connectivityDataSource;
  @override
  Stream<InternetConnection> streamGetInternetConnectionStatus() async* {
    yield* _connectivityDataSource
        .getConnectionStatus()
        .map<InternetConnection>(
          (event) => InternetConnection(
            isConnected: event,
          ),
        );
  }
}
