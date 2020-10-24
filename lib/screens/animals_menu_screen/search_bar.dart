import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color accentColor = Theme.of(context).accentColor;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        style: TextStyle(height: 2),
        decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.transparent,
            prefixIcon: Icon(
              Icons.search,
              color: accentColor,
            ),
            suffixIcon: Icon(
              Icons.send,
              color: accentColor,
            ),
            hintText: 'Search for a pet to adopt',
            hintStyle: TextStyle(
              color: accentColor,
              height: 2,
            )),
        cursorColor: accentColor,
      ),
    );
  }
}
