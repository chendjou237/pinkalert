class BlueToothTurnException implements Exception {
  final String message;

  BlueToothTurnException([this.message = "the bluetooth couldn't be turned on"]);
}

class BlueToothPermissionException implements Exception {
  final String message;

  BlueToothPermissionException(
      [this.message = "the bluetooth permission couldn't be granted"]);
}

class BlueToothScanException implements Exception {
  final String message;

  BlueToothScanException(
      [this.message = "the bluetooth couldn't scanned for devices"]);
}

class BlueToothTurnOffException implements Exception {
  final String message;

  BlueToothTurnOffException(
      [this.message = "the bluetooth couldn't be turned off"]);
}

class BlueToothDisconnectException implements Exception {
  final String message;

  BlueToothDisconnectException(
      [this.message = "the bluetooth couldn't be disconnected"]);
}