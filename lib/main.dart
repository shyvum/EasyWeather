import 'package:flutter/material.dart';

import 'ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(color: Colors.black),
        colorScheme: ColorScheme.fromSwatch(),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
