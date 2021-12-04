// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fruit_flower_bird_index/app/models/fruit.dart';

class FruitsDetailsView extends StatelessWidget {
  const FruitsDetailsView({
    Key? key,
    required this.fruit,
  }) : super(key: key);

  final Fruit fruit;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('${fruit.nameBangla}'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 3,
                  child: Container(
                    height: size.width / 1.5,
                    width: size.width - 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage(fruit.image ?? ''),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${fruit.nameBangla}',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Table(
                          // border: TableBorder.all(color: Color(0xFFD2DBDB)),
                          columnWidths: const {
                            0: FractionColumnWidth(.25),
                            1: FractionColumnWidth(.75),
                          },
                          border: TableBorder(
                            horizontalInside: BorderSide(
                              color: Colors.grey,
                            ),
                            verticalInside: BorderSide(
                              color: Colors.grey,
                            ),
                            top: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "পাখির নাম (বাংলা)",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF525252),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${fruit.nameBangla}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF525252),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "পাখির নাম (ইংরেজি)",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF525252),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${fruit.nameEnglish}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF525252),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "সংক্ষিপ্ত বর্ণনা",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF525252),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${fruit.description}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF525252),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
