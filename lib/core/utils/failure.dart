abstract class Failure implements Exception{}

class NetworkFailure extends Failure {}

class CacheFailure extends Failure {}

class InvalidInputFailure extends Failure{}

class MissedInputFailure extends Failure {}

class AuthorizeFailure extends Failure {}

class NotFoundFailure extends Failure {}

class UnknownFailure extends Failure {}
