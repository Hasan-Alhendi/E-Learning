import 'package:flutter/material.dart';

GestureDetector item3({
  required String name,
  required Color bottomLeft,
  required Color topRight,
  required double fontSize,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Builder(builder: (context) {
      return Container(
        margin: const EdgeInsets.all(5),
        height: 110,
        decoration: BoxDecoration(
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
              width: 20,
            ),
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
              width: 20,
            ),
          ],
        ),
      );
    }),
  );
}
