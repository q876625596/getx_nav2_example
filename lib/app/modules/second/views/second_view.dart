import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  final logic = Get.put(SecondController());
  final state = Get.find<SecondController>().state;
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
              QR.back();
            },
            child: Text("I am the second page of child routing, click me back to first child route"),
          ),
        ),
      ),
    );
  }
}
