import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTab,
  });

  final String answerText;
  final void Function() onTab;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 44, 1, 51),
        foregroundColor: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      ),
      child: Text(answerText),
    );
  }
}
