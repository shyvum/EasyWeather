import 'package:flutter/material.dart';

import '../../model/weather.dart';
import 'attribution_footer.dart';
import 'today_header.dart';
import 'weather_details.dart';
import 'weather_overview.dart';

class WeatherContent extends StatelessWidget {
  final Weather weather;

  const WeatherContent({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TodayHeader(),
            WeatherOverview(weather: weather),
            WeatherDetails(weather: weather),
            AttributionFooter()
          ],
        ),
      ),
    );
  }
}
