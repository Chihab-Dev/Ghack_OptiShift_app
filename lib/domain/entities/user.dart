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
}
