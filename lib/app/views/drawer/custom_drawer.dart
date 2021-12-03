// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, prefer_const_constructors, unused_local_variable, prefer_const_declarations
import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/controllers/custom_drawer_controller.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:fruit_flower_bird_index/app/data/enum/custom_drawer_section.dart';
import 'package:fruit_flower_bird_index/app/views/about-us/about_us_view.dart';
import 'package:fruit_flower_bird_index/app/views/contact-us/contact_us_view.dart';
import 'package:fruit_flower_bird_index/app/views/drawer/drawer_header.dart';
import 'package:fruit_flower_bird_index/app/views/home/home_view.dart';
import 'package:fruit_flower_bird_index/app/views/list/bird_list.dart';
import 'package:fruit_flower_bird_index/app/views/list/flower_list.dart';
import 'package:fruit_flower_bird_index/app/views/list/fruit_list.dart';
import 'package:get/get.dart';

class CustomDrawerView extends StatelessWidget {
  CustomDrawerView({Key? key}) : super(key: key);
  final customDrawerController = Get.put(CustomDrawerController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyDrawerHeader(),
              myDrawerList(context, customDrawerController),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myDrawerList(BuildContext context, CustomDrawerController controller) {
  return Container(
    padding: const EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItem(
          1,
          HOME,
          // Icons.home_filled,
          context,
          controller,
        ),
        menuItem(
          2,
          BIRDS,
          // Icons.home,
          context,
          controller,
        ),
        menuItem(
          3,
          FLOWERS,
          // Icons.home,
          context,
          controller,
        ),
        menuItem(
          4,
          FRUITS,
          // Icons.home,
          context,
          controller,
        ),
        menuItem(
          5,
          ABOUT_US,
          // Icons.home,
          context,
          controller,
        ),
        menuItem(
          6,
          CONTACT_US,
          // Icons.home,
          context,
          controller,
        ),
      ],
    ),
  );
}

Widget menuItem(
  int id,
  String title,
  // IconData icon,
  BuildContext context,
  CustomDrawerController controller,
) {
  return Material(
    // color: selected ? Colors.grey[200] : Colors.transparent,
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
        switch (id) {
          case 1:
            controller.currentPage.value = DrawerSections.DASHBOARD;
            Get.to(() => HomeView());
            break;
          case 2:
            controller.currentPage.value = DrawerSections.BIRDS;

            Get.to(() => BirdList());
            break;
          case 3:
            controller.currentPage.value = DrawerSections.FLOWERS;
            Get.to(() => FlowerList());

            break;
          case 4:
            controller.currentPage.value = DrawerSections.FRUITS;
            Get.to(() => FruitList());

            break;
          case 5:
            controller.currentPage.value = DrawerSections.ABOUT_US;
            Get.to(() => AboutUsView());
            break;
          case 6:
            controller.currentPage.value = DrawerSections.CONTACT_US;
            Get.to(() => ContactUsView());
            break;

          default:
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: controller.currentPage.value == DrawerSections.DASHBOARD
              ? Colors.grey[20]
              : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
