import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;
  final Color? accentColor;
  final int number;

  QuestionText({required this.question, this.accentColor, required this.number});

  @override
  Widget build(BuildContext context) {
    return Wrap (
      children: [
        Container(width: 43, child: Text('$number -', style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).colorScheme.secondary,
        ),)),
        Container(
          child: Text(
            question,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
