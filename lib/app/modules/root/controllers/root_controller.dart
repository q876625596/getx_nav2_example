import 'package:get/get.dart';
import 'package:getx_nav2_example/app/modules/root/bindings/root_view_model.dart';

class RootController extends GetxController {
  //TODO: Implement RootController
  final state = RootViewModel();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
