import 'package:ghack_app/domain/entities/client.dart';
import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/entities/product.dart';

enum DeliveryRequestState {
  WAITING,
  ACCEPTED,
  CHARGED,
  ON_ITS_WAY,
  DELIVERED,
  RETURNED,
}

class DeliveryRequest {
  DeliveryRequestState deliveryRequestState;
  Product product;
  Client client;
  DeliveryMan deliveryMan;
  DeliveryRequest({
    required this.deliveryRequestState,
    required this.product,
    required this.client,
    required this.deliveryMan,
  });
}
