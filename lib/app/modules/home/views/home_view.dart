import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.find<HomeController>();
  
  HomeView() {
    print("aaa");
  }


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((Duration duration) => controller.buildComplete());
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
                  Get.rootDelegate.toNamed(Routes.SECOND);
                },
                child: Text("I am the first page of child routing, click me go to second child route"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
