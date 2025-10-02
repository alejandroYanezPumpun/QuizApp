import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/components/custom_text_display.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion() {
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
        Center(
          child: CustomTextDisplay(
            text: currentQuestion.text,
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Column(
          children: [
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: AnswerButton(
                  onPressed: () {
                    answerQuestion();
                  },
                  answerText: answer,
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
