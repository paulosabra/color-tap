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
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
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
            ElevatedButton(
              onPressed: _changeBackgroundColor,
              style: ElevatedButton.styleFrom(
                backgroundColor: _textColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
              child: Center(
                child: Text(
                  'Change Color',
                  style: TextStyle(fontSize: 20, color: _backgroundColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
