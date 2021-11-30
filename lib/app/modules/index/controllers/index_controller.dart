import 'package:get/get.dart';
import 'package:getx_nav2_example/app/modules/index/bindings/index_vm.dart';

class IndexController extends GetxController {
  final state = IndexVM();


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
