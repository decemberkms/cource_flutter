import 'package:flutter/material.dart';
import 'package:app02/styled_text.dart';

// const - compile time  final - doesn't needto be compile time
const startAlignment = Alignment.bottomRight;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  // const GradientContainer({mykey}) : super(key: mykey);
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
      child: const Center(
        child: StyledText("Hello World!"),
      ),
    );
  }
}
