import 'package:flutter/material.dart';
import 'package:app02/gradient_contrainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer([
        Color.fromARGB(255, 103, 58, 183),
        Color.fromARGB(255, 255, 255, 255)
      ]),
    ),
  ));
}
