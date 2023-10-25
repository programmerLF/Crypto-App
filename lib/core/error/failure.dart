import 'package:equatable/equatable.dart';


class ServerFailure extends Failure{}
class CacheFailure extends Failure{}
class InternetConnectionFailure extends Failure{}

abstract class Failure extends Equatable {
  List properties = const <dynamic>[];

  Failure([properties]);

  @override
  List<Object?> get props => [properties];
}
