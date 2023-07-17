import 'package:flutter/material.dart';
import 'package:app02/styled_text.dart';

// const - compile time  final - doesn't needto be compile time
const startAlignment = Alignment.bottomRight;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });
  // const GradientContainer({mykey}) : super(key: mykey);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: const [
            Color.fromARGB(255, 103, 58, 183),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
