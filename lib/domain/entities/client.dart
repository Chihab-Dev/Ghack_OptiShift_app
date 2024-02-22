import 'dart:convert';
import 'package:ghack_app/domain/entities/feedback.dart';
import 'package:ghack_app/domain/entities/user.dart';

class Client extends User {
  String mapCoordinates;

  Client({
    required this.mapCoordinates,
    required String name,
    required String adress,
    required String phone,
    required DateTime birthDay,
    required String email,
    required String password,
    required String image,
    required String identifyCard,
    required List<Feedback> feedbackList,
  }) : super(
          name: name,
          adress: adress,
          phone: phone,
          birthDay: birthDay,
          email: email,
          password: password,
          image: image,
          identifyCard: identifyCard,
          feedbackList: feedbackList,
        );

  @override
  Map<String, dynamic> toMap() {
    return {
      ...super.toMap(),
      'mapCoordinates': mapCoordinates,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    return Client(
      mapCoordinates: map['mapCoordinates'] as String,
      name: map['name'] as String,
      adress: map['adress'] as String,
      phone: map['phone'] as String,
      birthDay: DateTime.fromMillisecondsSinceEpoch(map['birthDay'] as int),
      email: map['email'] as String,
      password: map['password'] as String,
      image: map['image'] as String,
      identifyCard: map['identifyCard'] as String,
      feedbackList: List<Feedback>.from(
        (map['feedbackList'] as List<dynamic>).map<Feedback>(
          (x) => Feedback.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Client.fromJson(String source) => Client.fromMap(json.decode(source) as Map<String, dynamic>);
}
