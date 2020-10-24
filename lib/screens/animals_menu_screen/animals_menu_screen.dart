import 'package:flutter/material.dart';

import 'package:animal_adoption/constants.dart';
import 'package:animal_adoption/widgets/main_app_bar.dart';
import 'package:animal_adoption/screens/animals_menu_screen/animal_type_selection_tab_bar.dart';
import 'package:animal_adoption/screens/animals_menu_screen/animals_tab_view.dart';
import 'package:animal_adoption/screens/animals_menu_screen/search_bar.dart';

class AnimalsMenuScreen extends StatelessWidget {
  static final routeName = '/animals-menu-screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Constants.backgroundColor,
          body: Column(
            children: [
              MainAppBar(),
              SearchBar(),
              SizedBox(height: 30),
              AnimalTypeSelectionTabBar(),
              AnimalsTabView(),
            ],
          ),
        ),
      ),
    );
  }
}
