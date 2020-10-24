import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;

  const TabItem({
    @required this.imageUrl,
    @required this.isSelected,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isSelected ? Colors.blue[200] : Colors.blue[50],
      ),
      child: Image.asset(
        imageUrl,
      ),
    );
  }
}
