import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';

import '../model/weather.dart';

class WeatherService {
  Future<Weather> getWeather() async {
    var status = await Permission.location.status;
    if (!status.isGranted) {
      await Permission.location.request();
    }
    if (status.isPermanentlyDenied) {
      openAppSettings();
    }
    Position? position = await Geolocator.getCurrentPosition();
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=6adf87802066a3ee22591eb3f8abfe0c';
    final response = await http.get(Uri.parse(url));
    return weatherFromJson(response.body);
  }
}
