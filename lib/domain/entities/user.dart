// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ghack_app/domain/entities/feedback.dart';

class User {
  String name;
  String adress;
  String phone;
  DateTime birthDay;
  String email;
  String password;
  String image;
  String identifyCard;
  List<Feedback> feedbackList;

  User({
    required this.name,
    required this.adress,
    required this.phone,
    required this.birthDay,
    required this.email,
    required this.password,
    required this.image,
    required this.identifyCard,
    required this.feedbackList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'adress': adress,
      'phone': phone,
      'birthDay': birthDay.millisecondsSinceEpoch,
      'email': email,
      'password': password,
      'image': image,
      'identifyCard': identifyCard,
      'feedbackList': feedbackList.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
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

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
