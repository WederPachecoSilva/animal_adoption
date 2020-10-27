import 'package:flutter/material.dart';
import 'package:animal_adoption/constants.dart';

class BottomNavBar extends StatelessWidget {
  final Function changeSelectedTabIndex;
  final int selectedTabIndex;

  const BottomNavBar({
    Key key,
    @required this.changeSelectedTabIndex,
    this.selectedTabIndex = 0,
  }) : super(key: key);

  void _onItemTapped(i) => changeSelectedTabIndex(i);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          // offset: Offset(30, 20),
          color: Colors.grey[900],
          blurRadius: 100,
        )
      ]),
      child: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 22),
        iconSize: 27,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Constants.primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.military_tech_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '.',
          ),
        ],
        currentIndex: selectedTabIndex,
        selectedItemColor: Constants.backgroundColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
