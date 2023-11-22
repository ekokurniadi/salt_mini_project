import 'package:salt_flutter_mini_project/modules/connectivity/domain/entities/connectivity.codegen.dart';

abstract class ConnectivityRepository {
  Stream<InternetConnection> streamGetInternetConnectionStatus();
}
