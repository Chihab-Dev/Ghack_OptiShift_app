import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/entities/delivery_request.dart';
import 'package:ghack_app/domain/entities/feedback.dart';
import 'package:ghack_app/domain/entities/user.dart';

abstract class RemoteDataSource {
  //                     user id
  Future<String> registerWithEmailAndPassword(User user);
  Future<String> loginWithEmailAndPassword(String email, String password);

  Future<void> updateDeliveryState(DeliveryRequestState deliveryRequestState, String deliveryId);
  Future<String> checkDeliveryRoute(String deliveryId);
  // Future<Product> checkProductDetails();
  Future<void> addFeedback(Feedback feedback, String deliveryId);

  Future<void> requestToDeliveryProduct(DeliveryMan deliveryMan, String deliveryId);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<void> addFeedback(Feedback feedback, String deliveryId) {
    // TODO: implement http request for addFeedback
    throw UnimplementedError();
  }

  @override
  Future<String> checkDeliveryRoute(String deliveryId) {
    // TODO: implement http request for checkDeliveryRoute
    throw UnimplementedError();
  }

  @override
  Future<String> loginWithEmailAndPassword(String email, String password) {
    // TODO: implement http request for loginWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<String> registerWithEmailAndPassword(User user) {
    // TODO: implement http request for registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> requestToDeliveryProduct(DeliveryMan deliveryMan, String deliveryId) {
    // TODO: implement http request for requestToDeliveryProduct
    throw UnimplementedError();
  }

  @override
  Future<void> updateDeliveryState(DeliveryRequestState deliveryRequestState, String deliveryId) {
    // TODO: implement http request for updateDeliveryState
    throw UnimplementedError();
  }
}
