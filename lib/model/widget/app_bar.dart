import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    /*  leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Get.back();
      },
    ), */
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Cocon Next Arabic',
        fontSize: 26,
      ),
    ),
    centerTitle: true,
    // shadowColor: const Color.fromRGBO(255, 255, 255, 0),
    elevation: 0,
    // backgroundColor: Color.fromARGB(255, 3, 149, 247),
  );
}
