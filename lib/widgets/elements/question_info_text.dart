import 'package:flutter/material.dart';

class QuestionInfoText extends StatelessWidget {
  final String text;

  QuestionInfoText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.only(left: 43),
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.left,
    ),
  );
    }
}
