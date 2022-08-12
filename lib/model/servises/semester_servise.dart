import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../control/controllers/level_controller.dart';
import '../classes/semester.dart';

class SemesterService {
  static Future<List<Semester>> fetchSemesters() async {
    List<Semester> loadedSemesters = [];
    LevelController controller = Get.find();
    int levelId = controller.levelId.value;
    //print(levelId);

    final response =
        await Dio().get('http://192.168.1.113:8000/api/chapter/show/$levelId');
    //if(response.statusCode=200)

    List jsonData = response.data;

    for (var item in jsonData) {
      loadedSemesters.add(Semester.fromJson(item));
    }

    return loadedSemesters;
  }
}
