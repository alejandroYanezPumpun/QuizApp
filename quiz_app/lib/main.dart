import 'package:flutter/material.dart';

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
          title: Text('Quizz App', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 60, 0, 103),
          toolbarHeight: 35,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 0, 88),
                Color.fromARGB(255, 112, 0, 132),
                Color.fromARGB(255, 51, 0, 88),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
