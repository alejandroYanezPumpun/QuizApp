import 'package:flutter/material.dart';
import 'package:quiz_app/components/main_background.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quizz App',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 60, 0, 103),
          toolbarHeight: 35,
        ),
        body: BackgroundContainer()
      ),
    );
  }
}
