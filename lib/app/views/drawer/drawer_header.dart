// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/controllers/custom_drawer_controller.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:get/get.dart';

class MyDrawerHeader extends StatelessWidget {
  MyDrawerHeader({Key? key}) : super(key: key);

  final customDrawerController = Get.put(CustomDrawerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: const AssetImage(FlowerCardImage),
                // image: AssetImage(AppString.DEFAULT_USER_IMG),
              ),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppName,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
