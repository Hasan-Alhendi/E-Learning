import 'dart:async';

import 'package:e_learning/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    //  startTime();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.level);
    });
    super.onInit();
  }
/*
  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Get.offNamed(Routes.level);
  } */

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.level);
    });
  }
}
