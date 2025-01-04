import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/weather.dart';

class LocationAndTemperature extends StatelessWidget {
  final Weather weather;

  const LocationAndTemperature({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weather.name,
                style: GoogleFonts.titilliumWeb(
                  color: Colors.black,
                  fontSize: 42.0,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Day ${(weather.main.tempMax - 273.15).toStringAsFixed(1)}° ↑\nNight ${(weather.main.tempMin - 273.15).toStringAsFixed(1)}° ↓',
                style: GoogleFonts.titilliumWeb(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            '${(weather.main.temp - 273.15).toInt()}°',
            style: GoogleFonts.titilliumWeb(
              color: Colors.black,
              fontSize: 72.0,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
