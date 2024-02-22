import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/entities/user.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:ghack_app/domain/usecase/base_usecase.dart';

class RegisterUseCase extends BaseUseCase<String, User> {
  Repository repository;
  RegisterUseCase({
    required this.repository,
  });
  @override
  Future<Either<Failure, String>> call(User parameters) async {
    return await repository.registerWithEmailAndPassword(parameters);
  }
}
