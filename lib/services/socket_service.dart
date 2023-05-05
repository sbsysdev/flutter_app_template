// flutter
import 'package:socket_io_client/socket_io_client.dart' as io;
// constants
import 'package:app/constants/env_value.dart';

class SocketService {
  late io.Socket _client;

  final String wsURL;

  SocketService({this.wsURL = EnvValue.wsUrl});

  void connect({Map<String, dynamic>? headers}) {
    _client = io.io(
      wsURL,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .enableAutoConnect()
          .enableForceNew()
          .setExtraHeaders(headers ?? {})
          .build(),
    );
  }

  void listen(String event, dynamic Function(dynamic) handler) {
    _client.on(event, handler);
  }

  void stopListen(String event, [dynamic Function(dynamic)? handler]) {
    _client.off(event, handler);
  }

  void disconnect() {
    _client.offAny();
    _client.disconnect();
  }
}
