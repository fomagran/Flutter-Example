import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  void getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (error) {
      print(error);
    }
  }
}
