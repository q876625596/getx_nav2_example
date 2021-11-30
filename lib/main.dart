import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/routes/app_pages.dart';
import 'package:qlevar_router/qlevar_router.dart';

void main() {
  QR.settings.enableDebugLog = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final routeObserver = RouteObserver<PageRoute>();

  MyApp({Key? key}) : super(key: key);

  final delegate = GetDelegate();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: QRouteInformationParser(),
      routerDelegate: QRouterDelegate(AppPages.routes, withWebBar: true),
      navigatorObservers: [
        routeObserver,
      ],
    );
  }
}
