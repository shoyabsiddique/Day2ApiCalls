import 'package:flutter/foundation.dart';

class UserModel {
  final String id;
  final String email;
  final String fname;
  final String lname;
  final String avatar;
  UserModel({
    required this.id,
    required this.email,
    required this.fname,
    required this.lname,
    required this.avatar,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'].toString(),
        email: json['email'],
        fname: json['first_name'],
        lname: json['last_name'],
        avatar: json['avatar']);
  }
}
