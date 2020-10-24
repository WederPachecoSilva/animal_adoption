import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

/// Get a [Future] that resolves in the location given by the OS
Future<Placemark> getCurrentLocation() async {
  Position position = await Geolocator.getLastKnownPosition(
    forceAndroidLocationManager: true,
  );

  List<Placemark> placemarks = await placemarkFromCoordinates(
    position.latitude,
    position.longitude,
  );
  return placemarks[0];
}
