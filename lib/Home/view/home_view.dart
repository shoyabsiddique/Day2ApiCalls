import 'package:apiapp/Home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Calls"),
      ),
      body: Obx(()=> GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: controller.data.length,
        itemBuilder: (BuildContext context, index){
          return Container(
            padding: EdgeInsets.only(top: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Text("${controller.data[index].value.id.toString()}. ${controller.data[index].value.fname.toString()} ${controller.data[index].value.lname.toString()}"),
                ClipRRect(child: Image.network(controller.data[index].value.avatar.toString(), fit: BoxFit.fill, width: 70, height: 70,), borderRadius: BorderRadius.circular(100),),
                Text("${controller.data[index].value.email.toString()}")
              ],
            ),
          );
        },
      ),
      ),
    );
  }
}
