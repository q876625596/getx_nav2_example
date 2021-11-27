import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';
import 'package:getx_nav2_example/main.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin, WidgetsBindingObserver, RouteAware {
  final controller = Get.find<HomeController>();

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    MyApp.routeObserver.unsubscribe(this);
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
