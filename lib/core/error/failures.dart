import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]);
}

// General Failures

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
