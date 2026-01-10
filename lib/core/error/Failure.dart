abstract class Failure {
  final String message;
  final int? statusCode;

  const Failure({required this.message, this.statusCode});
}

class ServerFailure extends Failure {
  const ServerFailure({required String message, int? statusCode})
      : super(message: message, statusCode: statusCode);
}

class CacheFailure extends Failure {
  const CacheFailure({required String message})
      : super(message: message);
}

class NetworkFailure extends Failure {
  const NetworkFailure({required String message})
      : super(message: message);
}

class AuthFailure extends Failure {
  const AuthFailure({required String message, int? statusCode})
      : super(message: message, statusCode: statusCode);
}

class ValidationFailure extends Failure {
  final Map<String, List<String>>? errors;

  const ValidationFailure({
    required String message,
    this.errors,
  }) : super(message: message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({required String message})
      : super(message: message);
}
