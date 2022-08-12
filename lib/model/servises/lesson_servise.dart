import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../control/controllers/unit_controller.dart';
import '../classes/lesson.dart';

class LessonService {
  static Future<List<Lesson>> fetchLessons() async {
    List<Lesson> loadedLessons = [];
    UnitController controller = Get.find();
    int unitId = controller.unitId.value;
    final response =
        await Dio().get('http://192.168.1.113:8000/api/lessons/show/$unitId');
    //if(response.statusCode=200)

    List jsonData = response.data;

    for (var item in jsonData) {
      loadedLessons.add(Lesson.fromJson(item));
    }

    return loadedLessons;
  }
}
