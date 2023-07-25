import 'package:intellibra/src/features/scan/data/bluetooth_scan_service.dart';

class ScanRepository {
  final service = BluetoothScanService();
  Future<void> permissionRequest() async {
    await service.requestPermission();
  }

  Future<void> bluetoothTurnOn() async {
    await service.turnBlueToothOn();
  }

  Future<void> startScan() async {
    await service.scanDevice();
  }
}
