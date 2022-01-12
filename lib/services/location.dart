import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try{
      bool serviceEnabled;
      LocationPermission permission; 
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition();

      latitude = position.latitude;
      longitude = position.longitude;
    }catch (e) {
      print(e);
    }
  }
}