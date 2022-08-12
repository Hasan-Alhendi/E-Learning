import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../control/controllers/subject_controller.dart';
import '../classes/Unit.dart';

class UnitService {
  static Future<List<Unit>> fetchUnits() async {
    List<Unit> loadedUnits = [];
    SubjectController controller = Get.find();
    int subjectId = controller.subjectId.value;
    final response =
        await Dio().get('http://192.168.1.113:8000/api/units/show/$subjectId');
    //if(response.statusCode=200)

    List jsonData = response.data;

    for (var item in jsonData) {
      loadedUnits.add(Unit.fromJson(item));
    }

    return loadedUnits;
  }
}
