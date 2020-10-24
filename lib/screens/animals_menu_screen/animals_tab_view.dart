// import 'package:animal_adoption/models/animal_model.dart';
import 'package:flutter/material.dart';

import 'package:animal_adoption/screens/animals_menu_screen/animal_card.dart';
import 'package:animal_adoption/services/animals_api.dart';

class AnimalsTabView extends StatelessWidget {
  final List<FutureBuilder> typeList =
      ['dog', 'fish', 'cat', 'rabbit'].map((type) {
    return FutureBuilder(
        future: AnimalsAPI.getAnimalsByType(type),
        builder: (ctx, animalsSnap) {
          if (animalsSnap.hasData) {
            return ListView.builder(
                itemCount: animalsSnap.data.length,
                itemBuilder: (context, i) {
                  return AnimalCard(
                    key: UniqueKey(),
                    animal: animalsSnap.data[i],
                  );
                });
          } else {
            return Container();
          }
        });
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: typeList,
        key: UniqueKey(),
      ),
    );
  }
}

// return FutureBuilder(
//   future:
//   AnimalsAPI.getAnimalsByType(type),
//   builder: (ctx, animalsSnap) => ListView.builder(
//       itemCount: animalsSnap.data.length,
//       itemBuilder: (context, i) {
//         return AnimalCard(
//           key: UniqueKey(),
//           animal: animalsSnap.data[i],
//         );
//       }),
// );
