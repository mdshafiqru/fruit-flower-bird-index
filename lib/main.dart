// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:fruit_flower_bird_index/app/views/home/home_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeView(),
    );
  }
}
