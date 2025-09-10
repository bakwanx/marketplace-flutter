import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  // TODO: implement isConnected
  Future<bool> get isConnected async {
    final connectivityStatus = await connectivity.checkConnectivity();
    return connectivityStatus == ConnectivityResult.none ? false : true;
  }

}