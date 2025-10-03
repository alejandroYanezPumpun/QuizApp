import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_text_display.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      CustomTextDisplay(
                        text: ((data['question_index'] as int) + 1).toString(),
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CustomTextDisplay(
                              text: (data['question'] as String),
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            CustomTextDisplay(
                              text: (data['correct_answer'] as String),
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            CustomTextDisplay(
                              text: (data['user_answer'] as String),
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
