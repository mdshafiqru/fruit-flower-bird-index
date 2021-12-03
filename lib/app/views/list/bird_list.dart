// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:fruit_flower_bird_index/app/views/details/details_view.dart';
import 'package:fruit_flower_bird_index/app/views/drawer/custom_drawer.dart';
import 'package:get/get.dart';

class BirdList extends StatelessWidget {
  const BirdList({Key? key}) : super(key: key);

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
          hintText: 'পাখির তথ্য সার্চ করুন',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
        ),
      ),
    );

    final cardList = Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Get.to(
                () => DetailsView(),
                transition: Transition.rightToLeft,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
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
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'পাখির নাম',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Bird name',
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
