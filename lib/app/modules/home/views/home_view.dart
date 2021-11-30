import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final logic = Get.put(HomeController());
  final state = Get.find<HomeController>().state;
  
  HomeView() {
    print("aaa");
  }


  @override
  Widget build(BuildContext context) {
    print("asas");
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller.textController,
              ),
              Padding(padding: EdgeInsets.all(20)),
              GestureDetector(
                onTap: () {
                  QR.toName(Routes.SECOND);
                },
                child: Text("I am the first page of child routing, click me go to second child route"),
              ),
              GestureDetector(
                onTap: () {
                  QR.toName(Routes.TEST);
                },
                child: Text("click me to test page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
