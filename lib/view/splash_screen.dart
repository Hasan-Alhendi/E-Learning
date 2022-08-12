import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../control/controllers/splash_controller.dart';

class SplashScreenView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (_) {
          return Scaffold(
            body: initScreen(context),
          );
        });
  }

  initScreen(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/icon.png");
    Image image = Image(
      image: assetImage,
      height: 200.0,
      width: 250.0,
    );

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xff7990DD),
              gradient: LinearGradient(
                  colors: [(new Color(0xff7990DD)), new Color(0xff374ABE)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: image,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "بسونة",
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontFamily: 'Cocon Next Arabic',
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0)), // padding top for button
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        )
      ],
    );
  }
}
