// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:fruit_flower_bird_index/app/views/list/bird_list.dart';
import 'package:fruit_flower_bird_index/app/views/list/flower_list.dart';
import 'package:fruit_flower_bird_index/app/views/list/fruit_list.dart';
import 'package:get/get.dart';

class IndexCard extends StatelessWidget {
  const IndexCard({
    Key? key,
    required this.nameBangla,
    required this.nameEnglish,
    required this.image,
    required this.listName,
  }) : super(key: key);
  final String nameBangla;
  final String nameEnglish;
  final String image;
  final String listName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: () {
          switch (listName) {
            case BirdString:
              Get.to(() => BirdList(), transition: Transition.rightToLeft);
              break;
            case FruitString:
              Get.to(() => FruitList(), transition: Transition.rightToLeft);
              break;
            case FlowerString:
              Get.to(() => FlowerList(), transition: Transition.rightToLeft);
              break;
            default:
          }
        },
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                  left: 16,
                ),
                child: Container(
                  height: size.width / 3,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      nameEnglish,
                      style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      nameBangla,
                      style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 30,
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
  }
}
