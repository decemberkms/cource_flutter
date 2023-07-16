import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(),
    ),
  ));
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 103, 58, 183),
            Color.fromARGB(255, 255, 255, 255),
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
    );
  }
}
