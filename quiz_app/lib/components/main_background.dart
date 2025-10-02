import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/quizz_home_screen.dart';

class BackgroundContainer extends StatefulWidget {
  const BackgroundContainer({super.key});

  @override
  State<BackgroundContainer> createState() => _BackgroundContainerState();
}

class _BackgroundContainerState extends State<BackgroundContainer> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = QuizzHomeScreen( changeScreen);
        selectedAnswers = [];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = QuizzHomeScreen(changeScreen);
  }

  void changeScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
  
    });
  }

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
      child: activeScreen,
    );
  }
}
