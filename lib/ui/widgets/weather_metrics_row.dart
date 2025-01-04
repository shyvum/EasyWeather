import 'package:flutter/material.dart';

class WeatherMetricsRow extends StatelessWidget {
  final Widget firstMetric;
  final Widget secondMetric;

  const WeatherMetricsRow({
    super.key,
    required this.firstMetric,
    required this.secondMetric,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [firstMetric, secondMetric],
    );
  }
}
