import 'package:ghack_app/domain/entities/user.dart';

class Client extends User {
  String mapCoordinates;
  Client({
    required super.name,
    required super.adress,
    required super.phone,
    required super.birthDay,
    required super.email,
    required super.password,
    required super.image,
    required super.identifyCard,
    required this.mapCoordinates,
    required super.feedbackList,
  });
}
