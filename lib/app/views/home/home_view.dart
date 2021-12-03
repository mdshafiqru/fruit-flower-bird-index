// ignore_for_file: unused_local_variable

import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/data/constant/app_strings.dart';
import 'package:fruit_flower_bird_index/app/views/drawer/custom_drawer.dart';
import 'package:fruit_flower_bird_index/app/views/home/widget/index_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppName),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: CustomDrawerView(),
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text('Tap back again to leave'),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  IndexCard(
                    image: FlowerCardImage,
                    nameBangla: 'ফুল',
                    nameEnglish: 'Flowers',
                    listName: FlowerString,
                  ),
                  IndexCard(
                    image: FruitCardImage,
                    nameBangla: 'ফল',
                    nameEnglish: 'Fruits',
                    listName: FruitString,
                  ),
                  IndexCard(
                    image: BirdCardImage,
                    nameBangla: 'পাখি',
                    nameEnglish: 'Birds',
                    listName: BirdString,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
