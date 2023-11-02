import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.errorMessage);

  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(super.errorMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);
}

class CacheFailure extends Failure {
  const CacheFailure(super.errorMessage);
}

class UnknownFailure extends Failure {
  const UnknownFailure(super.errorMessage);
}
