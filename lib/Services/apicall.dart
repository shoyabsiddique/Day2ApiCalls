import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Model/UserModel.dart';
class FetchUser{
  Future<dynamic> fetch() async {
    const uri = "https://reqres.in/api/users";
    var response = await http.get(Uri.parse(uri));
    var data = jsonDecode(response.body);
    final results = data['data'] as List;
    final List<Rx<UserModel>> users = results.map((e) =>
      UserModel.fromJson(e).obs
    ).toList();
    return users;
  }
}