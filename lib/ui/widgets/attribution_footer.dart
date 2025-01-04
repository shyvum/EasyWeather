import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AttributionFooter extends StatelessWidget {
  AttributionFooter({super.key});

  final Uri _attributionUrl = Uri.parse('https://openweathermap.org/');

  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
      child: InkWell(
        onTap: () {
          _launchURL(_attributionUrl);
        },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Text(
          'openweathermap.org',
          style: GoogleFonts.titilliumWeb(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
