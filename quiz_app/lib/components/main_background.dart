import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quizz_home_screen.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 51, 0, 88),
              Color.fromARGB(255, 120, 0, 142),
              Color.fromARGB(255, 51, 0, 88),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        alignment: Alignment.center,
        child: QuizzHomeScreen(),
    );
  }
}