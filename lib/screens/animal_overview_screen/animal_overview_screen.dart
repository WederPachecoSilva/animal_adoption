import 'package:flutter/material.dart';

import 'package:animal_adoption/models/animal_model.dart';
import 'package:animal_adoption/screens/animal_overview_screen/description_container.dart';
import 'package:animal_adoption/screens/animal_overview_screen/top_bar.dart';
import 'package:animal_adoption/widgets/animal_image.dart';

class AnimalOverviewScreen extends StatelessWidget {
  static final routeName = '/animal-overview-screen';

  @override
  Widget build(BuildContext context) {
    AnimalModel animal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            AnimalImage(
              hasBorderRadius: false,
              imageUrl: animal.imageUrl,
              height: MediaQuery.of(context).size.height / 2 + 30,
              width: MediaQuery.of(context).size.width,
            ),
            TopBar(),
            Positioned(
              top: 60,
              right: 15,
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: DescriptionContainer(animal: animal),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                    ),
                    color: Colors.white,
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Center(
                    child: Text(
                      'Adopt',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
