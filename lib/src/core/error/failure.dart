import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class ConnectionFailure extends Failure {
  ConnectionFailure({required this.errorMessage});
  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class ServerFailure extends Failure {
  ServerFailure({required this.errorMessage});
  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class CacheFailure extends Failure {
  CacheFailure({required this.errorMessage});
  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class UnknownFailure extends Failure {
  UnknownFailure({required this.errorMessage});
  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}
