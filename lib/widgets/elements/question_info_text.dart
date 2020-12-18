import 'package:flutter/material.dart';

class QuestionInfoText extends StatelessWidget {
  final String text;

  QuestionInfoText({this.text});

  @override
  Widget build(BuildContext context) {
    return text != null ? Padding(
      padding: EdgeInsets.only(left: 43),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
        textAlign: TextAlign.left,
      ),
    ) : Container(height: 0,);
  }
}
