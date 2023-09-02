// To parse this JSON data, do
//
//     final userNumber = userNumberFromJson(jsonString);

import 'dart:convert';

List<UserNumber> userNumberFromJson(String str) => List<UserNumber>.from(json.decode(str).map((x) => UserNumber.fromJson(x)));

String userNumberToJson(List<UserNumber> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserNumber {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  UserNumber({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory UserNumber.fromJson(Map<String, dynamic> json) => UserNumber(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
