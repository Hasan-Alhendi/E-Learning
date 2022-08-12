import 'package:get/get.dart';

import '../../model/classes/test.dart';
import '../../model/servises/test_servise.dart';

class TestController extends GetxController {
  var isLoading = true.obs;
  var testId = 0.obs;
  List<Test> testList = <Test>[].obs;

  @override
  void onInit() {
    fetchTests();
    super.onInit();
  }

  void fetchTests() async {
    try {
      isLoading(true);
      List<Test> tests = await TestService.fetchTests();

      // ignore: unnecessary_null_comparison
      if (tests != null) {
        testList = tests;
      }
    } finally {
      isLoading(false);
    }
  }
}
