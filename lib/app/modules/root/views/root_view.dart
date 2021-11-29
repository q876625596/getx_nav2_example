import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        Get.put(delegate, tag: "root", permanent: true);
        return GetRouterOutlet(
          anchorRoute: Routes.ROOT,
          initialRoute: Routes.INDEX,
          // anchorRoute: '/',
          // filterPages: (afterAnchor) {
          //   return afterAnchor.take(1);
          // },
        );
      },
    );
  }
}
