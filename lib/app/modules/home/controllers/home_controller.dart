import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:getx_nav2_example/app/modules/home/bindings/home_vm.dart';

class HomeController extends FullLifeCycleController{
  //TODO: Implement HomeController

  final state = HomeVM();

  buildComplete(){
    print("buildComplete");
  }
  final textController = TextEditingController();
  final count = 0.obs;
  @override
  // TODO: implement onStart
// TODO: implement onDelete
  InternalFinalCallback<void> get onDelete =>InternalFinalCallback<void>(callback: (){
    print("delete");
  });
  @override
  void onInit() {
    super.onInit();
    print("onInit");
    WidgetsBinding.instance?.addPostFrameCallback((Duration duration) => buildComplete());
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
  void increment() => count.value++;

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    print("onInactive");
  }

  @override
  void onPaused() {
    print("onPaused");
  }

  @override
  void onResumed() {
    print("onResumed");
  }
}
