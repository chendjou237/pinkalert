import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:intellibra/src/features/scan/data/bluetooth_exceptions.dart';
import 'package:permission_handler/permission_handler.dart';

class BluetoothScanService {
  Future<void> enableBlueTooth() async {
    // check availability
    if (await FlutterBluePlus.isAvailable == false) {
      if (kDebugMode) {
        print("Bluetooth not supported by this device");
      }
      return;
    }

// turn on bluetooth ourself if we can
    if (Platform.isAndroid) {
      await FlutterBluePlus.turnOn();
    }

// wait bluetooth to be on
    final adapter = await FlutterBluePlus.adapterState
        .where((s) => s == BluetoothAdapterState.on)
        .first;
  }

  Stream<BluetoothAdapterState> get state => FlutterBluePlus.adapterState;
  BluetoothAdapterState get initial => BluetoothAdapterState.unknown;
  Future<void> turnBlueToothOn() async {
    try {
      await FlutterBluePlus.turnOn();
    } catch (e) {
      throw BlueToothTurnException();
    }
  }

  Future<bool> requestPermission() async {
    try {
      if (Platform.isAndroid) {
        await [
          Permission.location,
          Permission.storage,
          Permission.bluetooth,
          Permission.bluetoothConnect,
          Permission.bluetoothScan
        ].request().then((status) {
          return true;
        });
      } else {
        return true;
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  Future<void> scanDevice() async {
    await FlutterBluePlus.startScan(
        timeout: const Duration(seconds: 30),
        includeConnectedDevices: true,
        androidUsesFineLocation: false);

    /*    // Setup Listener for scan results
    final subscription = FlutterBluePlus.scanResults.listen((results) {
      // do something with scan results

      for (ScanResult r in results) {
        if (kDebugMode) {
          print('${r.device.localName} found! rssi: ${r.rssi}');
        }
      }
    });

// Start scanning
    await FlutterBluePlus.startScan(timeout: Duration(seconds: 4));

// Stop scanning
    await FlutterBluePlus.stopScan(); */
  }

  Future<List<BluetoothDevice>> get connectedDevices =>
      FlutterBluePlus.connectedDevices;
  Future<void> turnBlueToothOff() async {
    try {
      await FlutterBluePlus.turnOff();
    } catch (e) {
      throw BlueToothTurnOffException();
    }
  }

  Future<void> disconnectDevice(BluetoothDevice device) async {
    try {
      await device.disconnect();
    } catch (e) {
      throw BlueToothDisconnectException();
    }
  }
}
