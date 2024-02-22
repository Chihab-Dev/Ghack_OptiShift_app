import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/entities/delivery_request.dart';
import 'package:ghack_app/domain/entities/feedback.dart';
import 'package:ghack_app/domain/entities/user.dart';
import 'package:ghack_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  @override
  Future<Either<Failure, void>> addFeedback(Feedback feedback, String deliveryId) {
    // TODO: implement addFeedback
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> checkDeliveryRoute(String deliveryId) {
    // TODO: implement checkDeliveryRoute
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> loginWithEmailAndPassword(String email, String password) {
    // TODO: implement loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> registerWithEmailAndPassword(User user) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> requestToDeliveryProduct(DeliveryMan deliveryMan, String deliveryId) {
    // TODO: implement requestToDeliveryProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateDeliveryState(DeliveryRequestState deliveryRequestState, String deliveryId) {
    // TODO: implement updateDeliveryState
    throw UnimplementedError();
  }
}
