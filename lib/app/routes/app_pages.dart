import 'package:getx_nav2_example/app/modules/home/views/home_view.dart';
import 'package:getx_nav2_example/app/modules/index/views/index_view.dart';
import 'package:getx_nav2_example/app/modules/root/views/root_view.dart';
import 'package:getx_nav2_example/app/modules/second/views/second_view.dart';
import 'package:getx_nav2_example/app/modules/test/views/test_view.dart';
import 'package:qlevar_router/qlevar_router.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;
  static final routes = [
    QRoute(path: Routes.ROOT, builder: () => RootView()),
    QRoute(path: Routes.TEST, builder: () => TestView()),
    QRoute.withChild(
      name: Routes.INDEX,
      path: Routes.INDEX,
      builderChild: (r) => IndexView(r),
      initRoute: Routes.HOME,
      children: [
        QRoute(
          name: Routes.HOME,
          path: Routes.HOME,
          builder: () => HomeView(),
          middleware: [
            QMiddlewareBuilder(onEnterFunc: () async {
              print('-- Enter Parent page --');
            }, onExitFunc: () async {
              print('-- Exit Parent page --');
            }, onMatchFunc: () async {
              print('-- Parent page Matched --');
            }),
          ],
        ),
        QRoute(
          name: Routes.SECOND,
          path: Routes.SECOND,
          builder: () => SecondView(),
          pageType: QSlidePage(),
        ),
      ],
    ),
  ];
}
