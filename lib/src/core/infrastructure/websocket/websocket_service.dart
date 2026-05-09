import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../auth/jwt_token_store.dart';

@lazySingleton
class WebSocketService {
  final JwtTokenStore _tokenStore;
  IO.Socket? _socket;

  final _connectionStatusController = BehaviorSubject<bool>.seeded(false);
  final _newJobsController =
      StreamController<Map<String, dynamic>>.broadcast();
  final _jobUpdatesController =
      StreamController<Map<String, dynamic>>.broadcast();

  Stream<bool> get connectionStatus => _connectionStatusController.stream;

  /// Emits whenever a new job is broadcast by the server.
  /// Safe to listen before connect() — events arrive only after connection.
  Stream<Map<String, dynamic>> get newJobs => _newJobsController.stream;

  /// Emits whenever an existing job is updated (e.g. applicantsCount changed).
  Stream<Map<String, dynamic>> get jobUpdates => _jobUpdatesController.stream;

  bool get isConnected => _socket?.connected ?? false;

  WebSocketService(this._tokenStore);

  Future<void> connect() async {
    // Already connected — nothing to do
    if (_socket?.connected ?? false) return;

    // Clean up any stale socket before reconnecting
    if (_socket != null) {
      _socket!.off('new_job');
      _socket!.off('job_updated');
      _socket!.disconnect();
      _socket!.dispose();
      _socket = null;
    }

    try {
      final token = await _tokenStore.getToken();
      if (token == null || token.isEmpty) {
        throw Exception('No authentication token available');
      }

      _socket = IO.io(
        'http://34.135.205.206:4000',
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .enableAutoConnect()
            .enableReconnection()
            .setReconnectionAttempts(5)
            .setReconnectionDelay(1000)
            .setReconnectionDelayMax(5000)
            .setAuth({'token': token})
            .build(),
      );

      _setupListeners();
    } catch (e) {
      _connectionStatusController.add(false);
      rethrow;
    }
  }

  void _setupListeners() {
    if (_socket == null) return;

    _socket!.onConnect((_) => _connectionStatusController.add(true));
    _socket!.onDisconnect((_) => _connectionStatusController.add(false));
    _socket!.onConnectError((_) => _connectionStatusController.add(false));
    _socket!.onError((_) => _connectionStatusController.add(false));
    _socket!.on('reconnect', (_) => _connectionStatusController.add(true));
    _socket!.on('reconnect_failed', (_) => _connectionStatusController.add(false));

    // Push socket events into the broadcast streams.
    // JobsListBloc subscribes to these streams — no direct coupling to the socket.
    _socket!.on('new_job', (data) {
      try {
        _newJobsController.add(Map<String, dynamic>.from(data as Map));
      } catch (_) {}
    });

    _socket!.on('job_updated', (data) {
      try {
        _jobUpdatesController.add(Map<String, dynamic>.from(data as Map));
      } catch (_) {}
    });
  }

  Future<void> disconnect() async {
    if (_socket != null) {
      _socket!.off('new_job');
      _socket!.off('job_updated');
      _socket!.disconnect();
      _socket!.dispose();
      _socket = null;
      _connectionStatusController.add(false);
    }
  }

  @disposeMethod
  Future<void> dispose() async {
    await disconnect();
    await _connectionStatusController.close();
    await _newJobsController.close();
    await _jobUpdatesController.close();
  }
}
