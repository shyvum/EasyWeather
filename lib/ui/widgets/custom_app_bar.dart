import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key});

  final Uri _infoUrl = Uri.parse('https://github.com/shyvum/easyweather');
  final Uri _shareUrl = Uri.parse(
      'https://wa.me/?text=Get%20real-time%20weather%20updates%20with%20EasyWeather!%20Download%20now:%20https://play.google.com/store/apps/details?id=com.shyvum.easyweather');

  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'EasyWeather',
        style: GoogleFonts.titilliumWeb(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 24.0,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.info_outline_rounded, color: Colors.black),
          onPressed: () {
            _launchURL(_infoUrl);
          },
        ),
        IconButton(
          icon: const Icon(Icons.share_outlined, color: Colors.black),
          onPressed: () {
            _launchURL(_shareUrl);
          },
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 32.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
