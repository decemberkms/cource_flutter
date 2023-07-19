import 'package:flutter/material.dart';
import 'package:app02/styled_text.dart';

// const - compile time  final - doesn't needto be compile time
const startAlignment = Alignment.bottomRight;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  const GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 103, 58, 183),
          Color.fromARGB(255, 255, 255, 255)
        ];

  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: Center(
        child: Image.asset(
          "assets/images/dice-1.png",
          width: 200,
        ),
      ),
    );
  }
}
