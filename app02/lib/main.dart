import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple,
              Colors.white,
            ],
          ),
        ),
        child: const Center(
          child: Text(
            "Hello world!",
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  ));
}
