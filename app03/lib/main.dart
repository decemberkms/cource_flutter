import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(199, 98, 51, 200),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/quiz-logo.png"),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Haha",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Start Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
