import 'package:flutter/material.dart';
import 'package:app02/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });
  // const GradientContainer({mykey}) : super(key: mykey);

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
        child: StyledText(),
      ),
    );
  }
}
