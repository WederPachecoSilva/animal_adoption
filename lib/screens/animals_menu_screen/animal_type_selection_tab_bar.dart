import 'package:flutter/material.dart';

import 'package:animal_adoption/screens/animals_menu_screen/tab_item.dart';

class AnimalTypeSelectionTabBar extends StatefulWidget {
  @override
  _AnimalTypeSelectionTabBarState createState() =>
      _AnimalTypeSelectionTabBarState();
}

class _AnimalTypeSelectionTabBarState extends State<AnimalTypeSelectionTabBar> {
  int _selectedTabIndex = 0;

  bool _isSelected(int tabIndex) =>
      _selectedTabIndex == tabIndex ? true : false;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: const EdgeInsets.all(5),
      indicatorColor: const Color(0X00000000),
      tabs: <Widget>[
        TabItem(
          imageUrl: 'assets/dog.png',
          isSelected: _isSelected(0),
          key: UniqueKey(),
        ),
        TabItem(
          imageUrl: 'assets/cat.png',
          isSelected: _isSelected(1),
          key: UniqueKey(),
        ),
        TabItem(
          imageUrl: 'assets/rabbit.png',
          isSelected: _isSelected(2),
          key: UniqueKey(),
        ),
        TabItem(
          imageUrl: 'assets/fish.png',
          isSelected: _isSelected(3),
          key: UniqueKey(),
        ),
      ],
      onTap: (i) {
        setState(() {
          _selectedTabIndex = i;
        });
      },
    );
  }
}
