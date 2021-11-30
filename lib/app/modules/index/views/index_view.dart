import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  final logic = Get.put(IndexController());
  final state = Get.find<IndexController>().state;

  final QRouter router;
  IndexView(this.router);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RootView'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            color: Colors.blueAccent,
            width: 300,
            height: double.infinity,
            child: Center(
              child: Text("Left Panel"),
            ),
          ),
          Expanded(
            flex: 1,
            child: router,
          ),
        ],
      ),
    );
  }
}
