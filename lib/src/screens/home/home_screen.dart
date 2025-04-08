import 'dart:math';

import 'package:color_tap/src/config/constans.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
      _textColor = _determineTextColor(_backgroundColor);
    });
  }

  Color _generateRandomColor() {
    return Color(Random().nextInt(Constants.white));
  }

  Color _determineTextColor(Color backgroundColor) {
    return backgroundColor.computeLuminance() > Constants.luminance
        ? Colors.black
        : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: _textColor,
            ),
          ),
        ),
      ),
    );
  }
}
