import 'package:dartz/dartz.dart';

import 'failure.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}
