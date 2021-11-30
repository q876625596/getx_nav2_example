import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  final logic = Get.put(TestController());
  final state = Get.find<TestController>().state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestView'),
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
                  QR.back();
                },
                child: Text("I am the test page of child routing, click me go to second child route"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
