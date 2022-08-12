import 'package:get/get.dart';

import '../../model/classes/Unit.dart';
import '../../model/servises/unit_servise.dart';

class UnitController extends GetxController {
  var isLoading = true.obs;
  var unitId = 0.obs;
  List<Unit> unitList = <Unit>[].obs;

  @override
  void onInit() {
    fetchUnits();
    super.onInit();
  }

  void fetchUnits() async {
    try {
      isLoading(true);
      List<Unit> units = await UnitService.fetchUnits();

      // ignore: unnecessary_null_comparison
      if (units != null) {
        unitList = units;
      }
    } finally {
      isLoading(false);
    }
  }
}
