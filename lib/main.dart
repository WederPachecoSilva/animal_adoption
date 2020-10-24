import 'package:flutter/material.dart';

import 'package:animal_adoption/screens/animal_overview_screen/animal_overview_screen.dart';
import 'package:animal_adoption/screens/animals_menu_screen/animals_menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AnimalsMenuScreen.routeName,
      routes: {
        AnimalOverviewScreen.routeName: (context) => AnimalOverviewScreen(),
        AnimalsMenuScreen.routeName: (context) => AnimalsMenuScreen(),
        // MainScreen.routeName: (context) => MainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
