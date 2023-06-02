import 'dart:convert';

import 'package:apiapp/Model/UserModel.dart';
import 'package:apiapp/Services/apicall.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  RxList <Rx<UserModel>> data = <Rx<UserModel>>[].obs;
  @override
  Future<void> onInit() async{
    FetchUser object = FetchUser();
    data.value = await object.fetch();
    super.onInit();
  }
}