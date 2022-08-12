import 'package:get/get.dart';

import '../../model/classes/lesson.dart';
import '../../model/servises/lesson_servise.dart';

class LessonController extends GetxController {
  var isLoading = true.obs;
  var lessonId = 0.obs;
  List<Lesson> lessonList = <Lesson>[].obs;

  @override
  void onInit() {
    fetchLessons();
    super.onInit();
  }

  void fetchLessons() async {
    try {
      isLoading(true);
      List<Lesson> lessons = await LessonService.fetchLessons();

      // ignore: unnecessary_null_comparison
      if (lessons != null) {
        lessonList = lessons;
      }
    } finally {
      isLoading(false);
    }
  }
}
