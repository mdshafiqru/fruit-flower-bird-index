// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/controllers/bird_list_controller.dart';
import 'package:fruit_flower_bird_index/app/controllers/flower_list_controller.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:fruit_flower_bird_index/app/models/bird.dart';
import 'package:fruit_flower_bird_index/app/models/flower.dart';
import 'package:fruit_flower_bird_index/app/views/details/bird_details.dart';
import 'package:fruit_flower_bird_index/app/views/details/flower_details.dart';
import 'package:fruit_flower_bird_index/app/views/drawer/custom_drawer.dart';
import 'package:get/get.dart';

class FlowerList extends StatelessWidget {
  FlowerList({Key? key}) : super(key: key);

  FlowerListController flowerListController = Get.put(FlowerListController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final searchBox = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        style: TextStyle(
          fontSize: 18,
          color: Colors.black54,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          hintText: 'ফুলের তথ্য সার্চ করুন',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
        ),
      ),
    );

    final cardList = Expanded(
      child: Obx(
        () => flowerListController.flowers.isNotEmpty
            ? ListView.builder(
                itemCount: flowerListController.flowers.length,
                itemBuilder: (BuildContext context, int index) {
                  Flower flower = flowerListController.flowers[index];
                  return InkWell(
                    onTap: () {
                      Get.to(
                        () => FlowersDetailsView(flower: flower),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 2),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: size.width / 4.2,
                                width: size.width / 4.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image: AssetImage(flower.image ?? ''),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '${flower.nameBangla}',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '${flower.nameEnglish}',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: Text(
                  'কোনো তথ্য পাওয়া যায়নি।',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
              ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppName),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: CustomDrawerView(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              searchBox,
              cardList,
            ],
          ),
        ),
      ),
    );
  }
}
