import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salt_flutter_mini_project/modules/connectivity/domain/entities/connectivity.codegen.dart';
import 'package:salt_flutter_mini_project/modules/connectivity/domain/usecases/stream_internet_connection.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

@lazySingleton
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc(this._listenConnection)
      : super(ConnectivityState.initial()) {
    _connectionStreamSubscription = _listenConnection().listen((event) {
      add(ConnectivityEvent.connectionReceived(event.isConnected));
    });

    on<ConnectionReceived>(_onConnectionReceived);
  }
  final StreamInternetConnection _listenConnection;

  StreamSubscription<InternetConnection>? _connectionStreamSubscription;

  @override
  Future<void> close() {
    _connectionStreamSubscription?.cancel();

    return super.close();
  }

  Future<void> _onConnectionReceived(
    ConnectionReceived event,
    Emitter<ConnectivityState> emit,
  ) async {
    emit(state.copyWith(internetConnectionStatus: event.internetConnection));
  }
}
