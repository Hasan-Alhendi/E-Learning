import 'package:get/get.dart';

import '../../model/classes/subject.dart';
import '../../model/servises/subject_servise.dart';

class SubjectController extends GetxController {
  var isLoading = true.obs;
  var subjectId = 0.obs;
  List<Subject> subjectList = <Subject>[].obs;

  @override
  void onInit() {
    fetchSubjects();
    super.onInit();
  }

  void fetchSubjects() async {
    try {
      isLoading(true);
      List<Subject> subjects = await SubjectService.fetchSubjects();

      // ignore: unnecessary_null_comparison
      if (subjects != null) {
        subjectList = subjects;
      }
    } finally {
      isLoading(false);
    }
  }
}
