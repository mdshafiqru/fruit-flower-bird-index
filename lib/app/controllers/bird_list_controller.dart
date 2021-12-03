// ignore_for_file: unused_field, prefer_final_fields

import 'package:fruit_flower_bird_index/app/data/data_list.dart';
import 'package:fruit_flower_bird_index/app/models/bird.dart';
import 'package:get/get.dart';

class BirdListController extends GetxController {
  var birds = <Bird>[].obs;
  DataList _dataList = DataList();

  getBirds() {
    for (var item in _dataList.birds) {
      birds.add(Bird.fromJson(item));
    }
  }

  @override
  void onInit() {
    getBirds();
    super.onInit();
  }
}
