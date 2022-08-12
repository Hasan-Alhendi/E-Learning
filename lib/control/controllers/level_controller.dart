import 'package:get/get.dart';

import '../../model/classes/level.dart';
import '../../model/servises/level_servise.dart';

class LevelController extends GetxController {
  var isLoading = true.obs;
  var levelId = 0.obs;
  List<Level> levelList = <Level>[].obs;

  @override
  void onInit() {
    fetchLevels();
    super.onInit();
  }

  void fetchLevels() async {
    try {
      isLoading(true);
      List<Level> levels = await LevelService.fetchLevels();

      // ignore: unnecessary_null_comparison
      if (levels != null) {
        levelList = levels;
      }
    } finally {
      isLoading(false);
    }
  }
}
