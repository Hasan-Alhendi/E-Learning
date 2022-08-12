import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../control/controllers/lesson_controller.dart';
import '../classes/test.dart';

class TestService {
  static Future<List<Test>> fetchTests() async {
    List<Test> loadedTests = [];
    LessonController controller = Get.find();
    int unitId = controller.lessonId.value;
    final response =
        await Dio().get('http://192.168.1.113:8000/api/tests/show/$unitId');
    //if(response.statusCode=200)

    List jsonData = response.data;

    for (var item in jsonData) {
      loadedTests.add(Test.fromJson(item));
    }

    return loadedTests;
  }
}
