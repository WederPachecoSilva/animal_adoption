import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderSymbolIcon extends StatelessWidget {
  final String gender;

  const GenderSymbolIcon({
    Key key,
    @required this.gender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/gender-${gender.toLowerCase()}.svg',
      color: Colors.blue[50],
      height: 55,
    );
  }
}
