import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_images_display.dart';
import 'package:quiz_app/components/custom_text_display.dart';

class QuizzHomeScreen extends StatelessWidget {
  final void Function()? startQuiz;
  const QuizzHomeScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomImageDisplay(
          imagePath: 'assets/images/quiz-logo.png',
          height: 340,
          width: 340,
          color: const Color.fromARGB(209, 255, 255, 255),
        ),
        const SizedBox(height: 5),

        CustomTextDisplay(
          text: "Learn Flutter the fun way",
          fontSize: 24,
          color: const Color.fromARGB(209, 255, 255, 255),
          fontWeight: FontWeight.bold,
        ),

        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: const BorderSide(
              color: Color.fromARGB(205, 255, 255, 255),
              width: 1.5,
            ),
          ),
          label: CustomTextDisplay(
            text: "Start Quiz",
            fontSize: 16,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        const SizedBox(height: 75),
      ],
    );
  }
}
