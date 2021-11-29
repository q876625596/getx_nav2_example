import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (      BuildContext context,
        GetDelegate delegate,
        GetNavConfig? currentRoute,){
      Get.put(delegate, tag: "index",permanent: true);
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
                anchorRoute: Routes.INDEX,
                initialRoute: Routes.INDEX + Routes.HOME,
              ),
            ),
          ],
        ),
      );
    });
  }
}
