import 'package:flutter/material.dart';

GestureDetector item2(
    {required String name,
    //required Color boxShadow,
    required Color bottomLeft,
    required Color topRight,
    required Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(5),
      height: 110,
      // width: 320,
      decoration: BoxDecoration(
        /* boxShadow: [
            BoxShadow(
              color: boxShadow,
              blurRadius: 0,
              offset: const Offset(0, 0),
            ),
          ], */
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              //Color.fromRGBO(233, 176, 255, 1),

              topRight,
              bottomLeft,
              //Color.fromRGBO(138, 99, 229, 1),
            ]),
      ),
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'Cocon Next Arabic',
          ),
        ),
      ),
    ),
  );
}
