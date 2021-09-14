import 'package:connectivity/connectivity.dart';

class ConnectivityStatus {
  getConnectivityStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if ((connectivityResult == ConnectivityResult.mobile) ||
        (connectivityResult == ConnectivityResult.wifi)) {
      return 0;
    } else {
      return 1;
    }
  }
}
