import 'package:flutter/material.dart';

import 'package:animal_adoption/constants.dart';
import 'package:animal_adoption/models/animal_model.dart';
import 'package:animal_adoption/screens/animal_overview_screen/owner_description_card.dart';
import 'package:animal_adoption/widgets/gender_symbol_icon.dart';

class DescriptionContainer extends StatelessWidget {
  final AnimalModel animal;

  const DescriptionContainer({Key key, this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 35,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(90),
        ),
        color: Constants.backgroundColor,
      ),
      padding: const EdgeInsets.all(35),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${animal.kind.toUpperCase()} ${animal.type.toUpperCase()}',
                    style: TextStyle(color: Colors.blue[50]),
                  ),
                  Text(
                    '${animal.name.toUpperCase()}',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  Text(
                    '${animal.ageInMonths} months old | ${animal.colour} colour',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              GenderSymbolIcon(gender: animal.gender),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          OwnerDescriptionCard(owner: animal.owner),
          Text(
            animal.description,
            style: TextStyle(color: Constants.primaryColor, fontSize: 17),
          )
        ],
      ),
    );
  }
}
