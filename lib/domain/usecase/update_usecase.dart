import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/entities/delivery_request.dart';
import 'package:ghack_app/domain/repository/repository.dart';
import 'package:ghack_app/domain/usecase/base_usecase.dart';

class UpdateDeliveryStateUseCase extends BaseUseCase<void, UpdateDeliveryStateParameters> {
  Repository repository;
  UpdateDeliveryStateUseCase({
    required this.repository,
  });
  @override
  Future<Either<Failure, void>> call(UpdateDeliveryStateParameters parameters) async {
    return await repository.updateDeliveryState(parameters.deliveryRequestState, parameters.deliveryId);
  }
}

class UpdateDeliveryStateParameters {
  DeliveryRequestState deliveryRequestState;
  String deliveryId;
  UpdateDeliveryStateParameters({
    required this.deliveryRequestState,
    required this.deliveryId,
  });
}
