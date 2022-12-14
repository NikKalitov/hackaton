part of 'app_bloc.dart';

enum AppStatus {
  initializing,
  loading,
  loaded,
}

enum ConnectionStatus {
  online,
  offline,
  unknown,
}

@freezed
class AppState with _$AppState {
  factory AppState({
    AppStatus? appStatus,
    ConnectionStatus? connectionStatus,
    Faculty? faculty,
  }) = _AppState;
}
