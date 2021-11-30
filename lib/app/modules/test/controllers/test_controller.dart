import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/modules/test/bindings/test_vm.dart';

class TestController extends GetxController {
  final state = TestVM();
  final textController = TextEditingController();
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
