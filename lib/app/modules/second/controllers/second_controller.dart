import 'package:get/get.dart';
import 'package:getx_nav2_example/app/modules/second/bindings/second_vm.dart';

class SecondController extends GetxController {
  final state = SecondVM();
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
