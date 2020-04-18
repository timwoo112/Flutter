import 'package:ch8_hero_animation/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ch8_hero_animation',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: Home(),
    );
  }
}
