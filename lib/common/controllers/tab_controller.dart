import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CommonTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  CommonTabController({this.length = 2});
  final int length;
  late TabController controller;

  @override
  void onInit() {
    super.onInit();

    controller = TabController(vsync: this, length: length);
  }

  @override
  void onClose() {
    controller.dispose();

    super.onClose();
  }
}
