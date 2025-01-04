import 'package:flutter/material.dart';

import '../model/weather.dart';
import '../repository/service.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/weather_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherService dataState = WeatherService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: FutureBuilder<Weather>(
        future: dataState.getWeather(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
            );
          }

          return WeatherContent(weather: snapshot.data!);
        },
      ),
    );
  }
}
