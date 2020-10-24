import 'package:flutter/material.dart';

import 'package:animal_adoption/constants.dart';
import 'package:animal_adoption/screens/animals_menu_screen/animals_menu_screen.dart';
import 'package:animal_adoption/widgets/main_app_bar.dart';
import 'bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  static final routeName = 'main-screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedTabIndex = 0;

  void changeSelectedTabIndex(newIndex) {
    setState(() {
      selectedTabIndex = newIndex;
    });
  }

  List<Widget> _widgetOptions = [
    AnimalsMenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: Column(
          children: <Widget>[
            MainAppBar(),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          selectedTabIndex: selectedTabIndex,
          changeSelectedTabIndex: changeSelectedTabIndex,
        ),
      ),
    );
  }
}
