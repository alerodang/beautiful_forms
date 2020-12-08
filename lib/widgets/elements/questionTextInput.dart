import 'package:flutter/material.dart';

class QuestionTextInput extends StatelessWidget {
  final Color color;

  QuestionTextInput({this.color});

  static bool _validate() {
    throw UnimplementedError(); //TODO validate
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43),
      child: TextField(
        onChanged: (text) => print('text'),
        //TODO get data do scheduler
        style: TextStyle(
            fontSize: 24,
            color: color,
            fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color.withOpacity(0.3)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color),
          ),
          hintText: 'Escribe la respuesta',
          hintStyle: TextStyle(
              fontSize: 26,
              color: color.withOpacity(0.3),
              fontWeight: FontWeight.w100),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
