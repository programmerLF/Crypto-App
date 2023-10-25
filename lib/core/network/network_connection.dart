import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkConnection {
  Future<bool> get isConnected;
}

@Injectable(as: NetworkConnection)
class NetworkConnectionImp implements NetworkConnection {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkConnectionImp(this.internetConnectionChecker);

  @override
  // checks if the user is connected to the internet
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}
