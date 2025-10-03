import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_text_display.dart';
import 'package:quiz_app/components/questions_sumary.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> choosenAnswers;
  const ResultsScreen({super.key, required this.choosenAnswers});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer':choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = getSummaryData().where( (data) {
      return data['user_answer'] == data['correct_answer'];
    } ).length;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextDisplay(
          text: 'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
          fontSize: 24,
          color: Colors.white,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        QuestionsSummary(getSummaryData()),
        SizedBox(height: 30),
        TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
      ],
    );
  }
}
