// ignore_for_file: unused_field, prefer_final_fields

import 'package:fruit_flower_bird_index/app/data/data_list.dart';
import 'package:fruit_flower_bird_index/app/models/flower.dart';
import 'package:get/get.dart';

class FlowerListController extends GetxController {
  var flowers = <Flower>[].obs;
  DataList _dataList = DataList();

  getFlowers() {
    for (var item in _dataList.flowers) {
      flowers.add(Flower.fromJson(item));
    }
  }

  @override
  void onInit() {
    getFlowers();
    super.onInit();
  }
}
