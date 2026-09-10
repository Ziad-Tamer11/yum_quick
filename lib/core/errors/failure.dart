abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errMessage);
}

class CustomException extends Failure {
  const CustomException(super.errMessage);
}
