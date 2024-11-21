import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionNumberInput extends StatelessWidget {
  final Color color;
  final Function(String, dynamic) onChange;
  final String field;

  QuestionNumberInput({
    required this.color,
    required this.onChange,
    required this.field,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43),
      child: TextField(
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: 24,
            color: color,
            fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily),
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
