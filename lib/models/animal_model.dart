// enum Gender { male, female }

// enum AnimalType { dog, fish, cat, rabbit }

import 'package:flutter/foundation.dart';

class AnimalModel {
  String name, owner, description, gender, type, kind, imageUrl, colour;
  int ageInMonths;
  int price;

  AnimalModel({
    @required this.ageInMonths,
    @required this.description,
    @required this.gender,
    @required this.name,
    @required this.owner,
    @required this.price,
    @required this.type,
    @required this.kind,
    @required this.imageUrl,
    @required this.colour,
  });

  factory AnimalModel.fromJson(Map<String, dynamic> json) {
    return AnimalModel(
      ageInMonths: json['ageInMonths'],
      description: json['description'],
      gender: json['gender'],
      name: json['name'],
      owner: json['owner'],
      price: json['price'],
      type: json['type'],
      kind: json['kind'],
      imageUrl: json['imageUrl'],
      colour: json['colour'],
    );
  }
}
