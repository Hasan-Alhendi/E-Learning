import 'package:e_learning/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../control/controllers/level_controller.dart';
import '../model/widget/item.dart';
import '../model/widget/app_bar.dart';

class LevelView extends GetView<LevelController> {
  const LevelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("الصفوف الدراسية"),
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
              itemCount: controller.levelList.length,
              itemBuilder: (context, index) => item(
                  // width: 300 /*  MediaQuery.of(context).size.width * 0.9 */,
                  // secondaryText: controller.levelList[index].level!,
                  name: controller.levelList[index].levelName!,
                  //boxShadow: Color(int.parse(
                  //controller.levelList[index].shadowColor!)),
                  bottomLeft: Color(
                      int.parse(controller.levelList[index].bottomLeftColor!)),
                  topRight: Color(
                      int.parse(controller.levelList[index].topRightColor!)),
                  num: controller.levelList[index].levelPic!,
                  path: 'assets/num',
                  fontSize: 28,
                  onTap: () {
                    controller.levelId.value = controller.levelList[index].id!;
                    //print(levelId);
                    Get.toNamed(Routes.semester,
                        arguments: controller.levelList[index].id!);
                  })),
        ),
      ),
    );
  }

  /* AppBar appBar([String s]) {
    return AppBar(
      title: const Text(
        "الصف الدراسي",
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Cocon Next Arabic',
          fontSize: 22,
        ),
      ),
      centerTitle: true,
      // shadowColor: const Color.fromRGBO(255, 255, 255, 0),
      elevation: 0,
      backgroundColor: const Color(0xffede5de),
    );
  }
 */
  /* GestureDetector classNum({
    required String level,
    required String classes,
    //required Color boxShadow,
    required Color bottomLeft,
    required Color topRight,
    required String num,
    required Function() onTap,
    required double width,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Builder(builder: (context) {
        return Container(
          margin: const EdgeInsets.all(5),
          height: 110,
          width: width,
          decoration: BoxDecoration(
            /* boxShadow: [
               BoxShadow(
                color: boxShadow,
                blurRadius: 0,
                offset: const Offset(0, 0),
              ), 
            ],*/
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  topRight,
                  bottomLeft,
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      level,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Cocon Next Arabic',
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          classes,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Cocon Next Arabic',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /* SvgPicture.asset(
                  'assets/num/num $num.svg',
                  height: 80,
                  semanticsLabel: 'assets/num/num $num',
                ), */
              Image.asset(
                'assets/num/$num.png',
                height: 70,
                width: 45,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        );
      }),
    );
  }
 */
}
