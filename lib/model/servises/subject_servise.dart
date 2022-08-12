import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../control/controllers/semester_controller.dart';
import '../classes/subject.dart';

class SubjectService {
  static Future<List<Subject>> fetchSubjects() async {
    List<Subject> loadedSubjects = [];
    SemesterController controller = Get.find();
    int semesterId = controller.semesterId.value;
    final response = await Dio()
        .get('http://192.168.1.113:8000/api/subject/show/$semesterId');
    //if(response.statusCode=200)

    List jsonData = response.data;

    for (var item in jsonData) {
      loadedSubjects.add(Subject.fromJson(item));
    }

    return loadedSubjects;
  }
}
