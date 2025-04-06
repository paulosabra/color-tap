import 'package:color_tap/src/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ColorTapApp extends StatelessWidget {
  const ColorTapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color Tap',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
