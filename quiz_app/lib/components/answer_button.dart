import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function() onPressed;
  final String answerText;
  const AnswerButton({super.key, required this.onPressed, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 12, horizontal: 16)),
          minimumSize: WidgetStateProperty.all(Size(0, 48)),
          backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 39, 0, 94)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          answerText, 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 19, color: Colors.white)
        ),
    );
  }
}