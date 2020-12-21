import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionTextInput extends StatelessWidget {
  final Color color;
  final Function(String, dynamic) onChange;
  final String field;

  QuestionTextInput({this.color, this.onChange, this.field});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43),
      child: TextField(
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z\s]'))],
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontSize: 24,
            color: color,
            fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily),
        textAlign: TextAlign.left,
        onChanged: (e) => this.onChange(field, e),
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
      ),
    );
  }
}
