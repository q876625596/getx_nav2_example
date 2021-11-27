import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondView'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Get.rootDelegate.popRoute();
            },
            child: Text("I am the second page of child routing, click me back to first child route"),
          ),
        ),
      ),
    );
  }
}
