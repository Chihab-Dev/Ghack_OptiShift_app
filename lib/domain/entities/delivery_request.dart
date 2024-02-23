// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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
  String deliveryId;
  DeliveryRequestState deliveryRequestState;
  Product product;
  Client client;
  DeliveryMan deliveryMan;
  DeliveryRequest({
    required this.deliveryId,
    required this.deliveryRequestState,
    required this.product,
    required this.client,
    required this.deliveryMan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryId': deliveryId,
      'product': product.toMap(),
      'client': client.toMap(),
      'deliveryMan': deliveryMan.toMap(),
    };
  }

  factory DeliveryRequest.fromMap(Map<String, dynamic> map) {
    return DeliveryRequest(
      deliveryId: map['deliveryId'],
      deliveryRequestState: DeliveryRequestState.WAITING,
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
      client: Client.fromMap(map['client'] as Map<String, dynamic>),
      deliveryMan: DeliveryMan.fromMap(map['deliveryMan'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DeliveryRequest.fromJson(String source) =>
      DeliveryRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
