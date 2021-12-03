// ignore_for_file: unused_field, prefer_final_fields

import 'package:fruit_flower_bird_index/app/data/data_list.dart';
import 'package:fruit_flower_bird_index/app/models/fruit.dart';
import 'package:get/get.dart';

class FruitListController extends GetxController {
  var fruits = <Fruit>[].obs;
  DataList _dataList = DataList();

  getFruits() {
    for (var item in _dataList.flowers) {
      fruits.add(Fruit.fromJson(item));
    }
  }

  @override
  void onInit() {
    getFruits();
    super.onInit();
  }
}
