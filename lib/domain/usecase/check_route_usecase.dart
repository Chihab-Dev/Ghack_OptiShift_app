import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:ghack_app/domain/usecase/base_usecase.dart';

class CheckDeliveryRouteUseCase extends BaseUseCase<String, String> {
  Repository repository;
  CheckDeliveryRouteUseCase({
    required this.repository,
  });
  @override
  Future<Either<Failure, String>> call(String parameters) async{
    return await repository.checkDeliveryRoute(parameters);
  }
}
