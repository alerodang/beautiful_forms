import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;
  final Color accentColor;
  final int number;

  QuestionText({this.question, this.accentColor, this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 43, child: Text('$number -', style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).accentColor,
        ),)),
        Container(
          child: Text(
            question,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
