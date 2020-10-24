import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:animal_adoption/constants.dart';
import 'package:animal_adoption/models/animal_model.dart';

Future<List<AnimalModel>> _getAll() async {
  final response = await http.get(Constants.ANIMAL_API_URL);

  if (response.statusCode == 200) {
    Iterable animalsJSON = json.decode(response.body);
    List<AnimalModel> animals =
        animalsJSON.map((animal) => AnimalModel.fromJson(animal)).toList();
    return animals;
  } else {
    throw Exception('Failed to load album');
  }
}

class AnimalsAPI {
  static Future<List<AnimalModel>> getAnimalsByType(String type) async {
    var animals = await _getAll();
    return animals.where((animal) => animal.type == type).toList();
  }
}
