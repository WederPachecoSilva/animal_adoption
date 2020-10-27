import 'package:animal_adoption/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:animal_adoption/constants.dart';
import 'package:animal_adoption/widgets/main_app_bar.dart';
import 'package:animal_adoption/screens/animals_menu_screen/animal_type_selection_tab_bar.dart';
import 'package:animal_adoption/screens/animals_menu_screen/animals_tab_view.dart';
import 'package:animal_adoption/screens/animals_menu_screen/search_bar.dart';

class AnimalsMenuScreen extends StatefulWidget {
  static final routeName = '/animals-menu-screen';

  @override
  _AnimalsMenuScreenState createState() => _AnimalsMenuScreenState();
}

class _AnimalsMenuScreenState extends State<AnimalsMenuScreen> {
  int _selectedIndex = 0;

  void _changeTabIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        MainAppBar(),
        SearchBar(),
        SizedBox(height: 30),
        AnimalTypeSelectionTabBar(),
        AnimalsTabView(),
      ],
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavBar(
            selectedTabIndex: _selectedIndex,
            changeSelectedTabIndex: _changeTabIndex,
          ),
          backgroundColor: Constants.backgroundColor,
          body: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
