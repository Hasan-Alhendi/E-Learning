import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../control/controllers/semester_controller.dart';
import '../model/widget/app_bar.dart';
import '../model/widget/item2.dart';
import '../routes.dart';

class SemesterView extends GetView<SemesterController> {
  const SemesterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.semesterList = [];
        return true;
      },
      child: Scaffold(
        appBar: appBar("الفصل الدراسي"),
        body: Obx(
          () => Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    itemCount: controller.semesterList.length,
                    itemBuilder: (context, index) => item2(
                      name: controller.semesterList[index].semesterName!,
                      bottomLeft: const Color(0xffef7590),
                      topRight: const Color(0xffffd380),
                      onTap: () {
                        controller.semesterId.value =
                            controller.semesterList[index].id!;
                        Get.toNamed(Routes.subject,
                            arguments: controller.semesterList[index].id!);
                      },
                      //fontSize: 23,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                    ),
                  ),
                ),
                Expanded(
                    child: Image.asset(
                  "assets/logo.png",
                //  width: 450,
                )),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
