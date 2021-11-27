import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
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
            child: GetRouterOutlet(
              initialRoute: Routes.HOME,
            ),
          )
        ],
      ),
    );
  }
}
