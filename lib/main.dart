import 'package:dice_roller/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Dice Roller',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: HomePage(),
  ));
}