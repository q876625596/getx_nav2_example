import 'package:get/get.dart';

import 'package:getx_nav2_example/app/modules/home/bindings/home_binding.dart';
import 'package:getx_nav2_example/app/modules/home/views/home_view.dart';
import 'package:getx_nav2_example/app/modules/root/bindings/root_binding.dart';
import 'package:getx_nav2_example/app/modules/root/views/root_view.dart';
import 'package:getx_nav2_example/app/modules/second/bindings/second_binding.dart';
import 'package:getx_nav2_example/app/modules/second/views/second_view.dart';
import 'package:getx_nav2_example/app/modules/test/bindings/test_binding.dart';
import 'package:getx_nav2_example/app/modules/test/views/test_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
        name: _Paths.ROOT,
        page: () => RootView(),
        binding: RootBinding(),
        preventDuplicates: true,
        participatesInRootNavigator: true,
        children: [
          GetPage(
            name: _Paths.HOME,
            page: () => HomeView(),
            binding: HomeBinding(),
          ),
          GetPage(
            name: _Paths.SECOND,
            page: () => SecondView(),
            binding: SecondBinding(),
          ),
        ]),
    GetPage(
      name: _Paths.TEST,
      page: () => TestView(),
      binding: TestBinding(),
    ),
  ];
}
