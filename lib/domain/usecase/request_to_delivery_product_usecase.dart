// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:ghack_app/domain/usecase/base_usecase.dart';

class RequestToDeliveryProductUseCase extends BaseUseCase<void, RequestToDeliveryProductParameters> {
  Repository repository;
  RequestToDeliveryProductUseCase({
    required this.repository,
  });
  @override
  Future<Either<Failure, void>> call(RequestToDeliveryProductParameters parameters) async {
    return await repository.requestToDeliveryProduct(parameters.deliveryMan, parameters.deliveryId);
  }
}

class RequestToDeliveryProductParameters {
  DeliveryMan deliveryMan;
  String deliveryId;
  RequestToDeliveryProductParameters({
    required this.deliveryId,
    required this.deliveryMan,
  });
}
