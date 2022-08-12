import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../control/controllers/unit_controller.dart';
import '../model/widget/app_bar.dart';
import '../model/widget/item2.dart';
import '../routes.dart';

class UnitView extends GetView<UnitController> {
  const UnitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.unitList = [];
        return true;
      },
      child: Scaffold(
        appBar: appBar("الوحدات"),
        body: Obx(
          () => Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
              itemCount: controller.unitList.length,
              itemBuilder: (context, index) => item2(
                  name: controller.unitList[index].unitName!,
                  //boxShadow: const Color(0xfffdab84),
                  bottomLeft: Color(
                      int.parse(controller.unitList[index].bottomLeftColor!)),
                  topRight: Color(
                      int.parse(controller.unitList[index].topRightColor!)),
                  onTap: () {
                    controller.unitId.value = controller.unitList[index].id!;
                    Get.toNamed(Routes.lesson,
                        arguments: controller.unitList[index].id!);

                    // viewBottomSheet(showVideo: () {}, exam: () {});
                  }),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200),
            ),
          ),
        ),
      ),
    );
  }

  }
