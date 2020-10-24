import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:animal_adoption/constants.dart';
import 'package:animal_adoption/models/animal_model.dart';
import 'package:animal_adoption/screens/animal_overview_screen/animal_overview_screen.dart';
import 'package:animal_adoption/widgets/animal_image.dart';
import 'package:animal_adoption/widgets/gender_symbol_icon.dart';

class AnimalCard extends StatelessWidget {
  final AnimalModel animal;

  const AnimalCard({
    Key key,
    @required this.animal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        AnimalOverviewScreen.routeName,
        arguments: animal,
      ),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Constants.backgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF5489B5),
              blurRadius: 10,
              offset: Offset(3, 3),
            )
          ],
        ),
        margin: const EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AnimalImage(
              hasBorderRadius: true,
              height: double.infinity,
              width: 135,
              imageUrl: animal.imageUrl,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(animal.name.toUpperCase()),
                Text(
                    '${animal.type.toUpperCase()} ${animal.gender.toUpperCase()}'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '${animal.ageInMonths} months old',
                    style: TextStyle(
                      color: Colors.blue[50],
                    ),
                  ),
                ),
                Text(
                  '\$ ${animal.price}',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 10),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: GenderSymbolIcon(
                  gender: animal.gender,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
