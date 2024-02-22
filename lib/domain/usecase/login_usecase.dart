// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:ghack_app/domain/usecase/base_usecase.dart';

class LoginUseCase extends BaseUseCase<String, LoginParameters> {
  Repository repository;
  LoginUseCase({
    required this.repository,
  });
  @override
  Future<Either<Failure, String>> call(parameters) async {
    return await repository.loginWithEmailAndPassword(parameters.email, parameters.password);
  }
}

class LoginParameters {
  String email;
  String password;
  LoginParameters({
    required this.email,
    required this.password,
  });
}
