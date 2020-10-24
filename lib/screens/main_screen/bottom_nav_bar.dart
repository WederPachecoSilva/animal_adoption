import 'package:flutter/material.dart';
import 'package:animal_adoption/constants.dart';

class BottomNavBar extends StatelessWidget {
  final Function changeSelectedTabIndex;
  final int selectedTabIndex;

  const BottomNavBar({
    Key key,
    @required this.changeSelectedTabIndex,
    @required this.selectedTabIndex,
  }) : super(key: key);

  void _onItemTapped(i) => changeSelectedTabIndex(i);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(30, 20),
          color: Colors.grey[200],
          blurRadius: 100,
        )
      ]),
      child: BottomNavigationBar(
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Constants.primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
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
