part of 'scan_cubit.dart';

@immutable
abstract class ScanState {}

class ScanInitial extends ScanState {}

class RequestPermissionInit extends ScanState {}

class RequestPermissionSuccess extends ScanState {}

class RequestPermissionFailure extends ScanState {
  final String message;
  RequestPermissionFailure({required this.message});
}

class TurnOnBluetoothInit extends ScanState {}

class TurnOnBluetoothSuccess extends ScanState {}

class TurnOnBluetoothFailure extends ScanState {
  final String message;
  TurnOnBluetoothFailure({required this.message});
}

class ScanDeviceInit extends ScanState {}

class ScanDeviceSuccess extends ScanState {
  final List<BluetoothDevice> devices;
  ScanDeviceSuccess({required this.devices});
}

class ScanDeviceFailure extends ScanState {
  final String message;
  ScanDeviceFailure({required this.message});
}
