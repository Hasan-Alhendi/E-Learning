import 'package:get/get.dart';

import '../../model/classes/semester.dart';
import '../../model/servises/semester_servise.dart';

class SemesterController extends GetxController {
  var isLoading = true.obs;
  var semesterId = 0.obs;

  List<Semester> semesterList = <Semester>[].obs;

  @override
  void onInit() {
    fetchSemesters();
    super.onInit();
  }

  void fetchSemesters() async {
    try {
      isLoading(true);
      List<Semester> semesters = await SemesterService.fetchSemesters();

      // ignore: unnecessary_null_comparison
      if (semesters != null) {
        semesterList = semesters;
      }
    } finally {
      isLoading(false);
    }
  }
}
