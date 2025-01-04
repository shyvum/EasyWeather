import 'package:flutter/material.dart';

import '../../model/weather.dart';
import 'location_and_temperature.dart';

class WeatherOverview extends StatelessWidget {
  final Weather weather;

  const WeatherOverview({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/header.png'),
          alignment: Alignment.centerRight,
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LocationAndTemperature(weather: weather),
        ],
      ),
    );
  }
}
