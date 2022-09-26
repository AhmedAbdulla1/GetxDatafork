import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sec_it_developers_getx_course/View/Screen/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
