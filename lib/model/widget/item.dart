import 'package:flutter/material.dart';

GestureDetector item({
  //String? secondaryText,
  required String name,
  //required Color boxShadow,
  required Color bottomLeft,
  required Color topRight,
  String? num,
  String? path,
  required double fontSize,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Builder(builder: (context) {
      return Container(
        margin: const EdgeInsets.all(5),
        height: 110,
        // width: width,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 90,
            ),
            /* const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(
              width: 25,
            ), */
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /* if (secondaryText != null)
                    Text(
                      secondaryText,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Cocon Next Arabic',
                      ),
                    ), */
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                            fontFamily: 'Cocon Next Arabic',
                          ),
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
            if (num != null && path != null)
              Image.asset(
                "$path/$num.png",
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
