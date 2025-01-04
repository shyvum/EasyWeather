import 'package:flutter/material.dart';

import '../../model/weather.dart';
import 'weather_metric_card.dart';

class WeatherDetails extends StatelessWidget {
  final Weather weather;

  const WeatherDetails({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1.5,
        children: [
          WeatherMetricCard(
            title: 'Visibility',
            value: '${weather.visibility} m',
            iconId: 'BflHxCZO3yb2',
            color: Colors.orangeAccent,
          ),
          WeatherMetricCard(
            title: 'Wind',
            value: '${weather.wind.speed.toStringAsFixed(1)} km/h',
            iconId: 'kkGqzPJkguIf',
            color: Colors.purpleAccent,
          ),
          WeatherMetricCard(
            title: 'Pressure',
            value: '${weather.main.pressure} hPa',
            iconId: 'HtAZFTKSquVD',
            color: Colors.pinkAccent,
          ),
          WeatherMetricCard(
            title: 'Humidity',
            value: '${weather.main.humidity}%',
            iconId: 'MhkU1HOeZffe',
            color: Colors.lightBlueAccent,
          ),
          WeatherMetricCard(
            title: 'Sea Level',
            value: '${weather.main.seaLevel} m',
            iconId: '09mzTarWhdwO',
            color: Colors.indigoAccent,
          ),
          WeatherMetricCard(
            title: 'Ground Level',
            value: '${weather.main.grndLevel} m',
            iconId: '7pyBnIFIx5OY',
            color: Colors.red,
          ),
          WeatherMetricCard(
            title: 'Latitude',
            value: '${weather.coord.lat.toStringAsFixed(2)}° N',
            iconId: 'XieTOK4V0QEI',
            color: Colors.green,
          ),
          WeatherMetricCard(
            title: 'Longitude',
            value: '${weather.coord.lon.toStringAsFixed(2)}° E',
            iconId: 'XieTOK4V0QEI',
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
