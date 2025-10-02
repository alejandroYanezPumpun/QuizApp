import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/components/custom_text_display.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        SizedBox(height: 150),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: CustomTextDisplay(
              text: currentQuestion.text,
              fontSize: 30,
              color: const Color.fromARGB(255, 250, 209, 255),
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 5),
        Column(
          children: [
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                child: SizedBox(
                  width: double.infinity,
                  child: AnswerButton(
                    onPressed: () {
                      answerQuestion(answer);
                    },
                    answerText: answer,
                  ),
                ),
              );
            }),
            SizedBox(height: 180),  
          ],
        ),
      ],
    );  
  }
}
