import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}
