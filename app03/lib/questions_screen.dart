import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question..'),
          const SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answers1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answers2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answers3'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answers4'),
          )
        ],
      ),
    );
  }
}
