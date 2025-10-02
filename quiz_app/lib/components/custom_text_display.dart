import 'package:flutter/material.dart';

class CustomTextDisplay extends StatelessWidget {
  final String text;
  final int fontSize;
  final Color color;
  final FontWeight? fontWeight;
  const CustomTextDisplay({super.key, required this.text, required this.fontSize, required this.color,  this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(  
      text,
      style: TextStyle(
        fontSize: fontSize.toDouble(),
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}