import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkCconnectivity() async {
  final connectivityResult = await Connectivity().checkConnectivity();

  if (connectivityResult == ConnectivityResult.wifi) {
    // I am not connected to any network.
    return true;
  }
  if (connectivityResult == ConnectivityResult.mobile) {
    // I am connected to a mobile network.
    return true;
  }
  return false;
}
