import 'package:animal_adoption/services/get_location.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

import 'package:animal_adoption/constants.dart';

class MainAppBar extends StatefulWidget {
  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  String _city = '0';

  @override
  void didChangeDependencies() {
    getCurrentCity();
    super.didChangeDependencies();
  }

  void getCurrentCity() async {
    Placemark location = await getCurrentLocation();

    var state = location.administrativeArea
        .split(' ')
        .map((e) => e.substring(0, 1))
        .join('');

    setState(() {
      if (location != null)
        _city = '${location.subAdministrativeArea} - $state';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Icon(Icons.place, color: Constants.primaryColor),
      title: Text(
        _city,
        style: TextStyle(fontSize: 20, color: Constants.primaryColor),
      ),
      trailing: Icon(Icons.notifications, color: Constants.primaryColor),
    );
  }
}
