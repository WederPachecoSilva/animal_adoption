import 'dart:io';

import 'package:flutter/material.dart';

import '../../constants.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: const Color(0X01000000),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            color: Constants.primaryColor,
            icon: Platform.isAndroid
                ? const Icon(Icons.arrow_back)
                : const Icon(Icons.arrow_back_ios),
            onPressed: Navigator.of(context).pop,
          ),
          IconButton(
            icon: Icon(
              Icons.shop_outlined,
              color: Constants.primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
