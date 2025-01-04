import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherMetricCard extends StatelessWidget {
  final String title;
  final String value;
  final String iconId;
  final Color color;

  const WeatherMetricCard({
    super.key,
    required this.title,
    required this.value,
    required this.iconId,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: color, width: 2.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      elevation: 0.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 4.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: color,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://img.icons8.com/?size=128&id=$iconId&format=png', width: 20),
                const SizedBox(width: 6.0),
                Text(
                  title,
                  style: GoogleFonts.titilliumWeb(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Text(
              value,
              style: GoogleFonts.titilliumWeb(
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
