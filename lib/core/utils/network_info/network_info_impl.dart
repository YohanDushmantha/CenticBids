import 'package:data_connection_checker/data_connection_checker.dart';

import 'network_info.dart';

class NetworkInfoImpl extends NetworkInfo{
  final DataConnectionChecker dataConnectionChecker;
  NetworkInfoImpl(this.dataConnectionChecker);

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}