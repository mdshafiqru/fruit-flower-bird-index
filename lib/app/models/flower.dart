// ignore_for_file: unnecessary_this

class Flower {
  int? id;
  String? nameBangla;
  String? nameEnglish;
  String? image;
  String? description;

  Flower(
      {this.id,
      this.nameBangla,
      this.nameEnglish,
      this.image,
      this.description});

  Flower.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    image = json['image'];
    nameBangla = json['BanglaName'];
    nameEnglish = json['EnglishName'];
    description = json['Details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['Id'] = this.id;
    data['image'] = this.image;
    data['BanglaName'] = this.nameBangla;
    data['EnglishName'] = this.nameEnglish;
    data['Details'] = this.description;
    return data;
  }
}
