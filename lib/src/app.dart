import 'package:color_tap/src/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ColorTapApp extends StatelessWidget {
  const ColorTapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
