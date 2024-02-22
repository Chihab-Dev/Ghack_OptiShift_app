import 'dart:convert';

class Feedback {
  int note;
  String comment;
  Feedback({
    required this.note,
    required this.comment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'note': note,
      'comment': comment,
    };
  }

  factory Feedback.fromMap(Map<String, dynamic> map) {
    return Feedback(
      note: map['note'] as int,
      comment: map['comment'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Feedback.fromJson(String source) => Feedback.fromMap(json.decode(source) as Map<String, dynamic>);
}
