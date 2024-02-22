import 'package:dartz/dartz.dart';
import 'package:ghack_app/core/error/failure.dart';
import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/entities/delivery_request.dart';
import 'package:ghack_app/domain/entities/feedback.dart';
import 'package:ghack_app/domain/entities/user.dart';

abstract class Repository {
  // AUTH ::
  //                     user id
  Future<Either<Failure, String>> registerWithEmailAndPassword(User user);
  Future<Either<Failure, String>> loginWithEmailAndPassword(String email, String password);

  // Client ::
  //                            delivery DELIVERED / RETURNED
  Future<Either<Failure, void>> updateDeliveryState(DeliveryRequestState deliveryRequestState, String deliveryId);
  Future<Either<Failure, String>> checkDeliveryRoute(String deliveryId);
  // Future<Either<Failure, Product>> checkProductDetails();
  Future<Either<Failure, void>> addFeedback(Feedback feedback, String deliveryId);

  // Delivery Man ::
  Future<Either<Failure, void>> requestToDeliveryProduct(DeliveryMan deliveryMan, String deliveryId);
  // update Delivery State the same as client
  // add Feedback the same as client
}
