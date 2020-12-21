import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> countries = ['+34', 'Otro'];

class QuestionPhoneNumberInput extends StatelessWidget {
  final Color color;
  final Function(String, dynamic) onChange;
  final String field;


  QuestionPhoneNumberInput({this.color, this.onChange, this.field});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43),
      child: Row(
        children: <Widget>[
          //TODO accept multi country numbers
//          Container(
//            color: color.withOpacity(1),
//            child: Center(
//              child: Padding(
//                padding: const EdgeInsets.only(left: 10, right: 5),
//                child: DropdownButtonHideUnderline(
//                  child: DropdownButton<String>(
//                    dropdownColor: color,
//                    value: '+34',
//                    icon: Icon(
//                      Icons.arrow_drop_down,
//                      color: Theme.of(context).primaryColor,
//                      size: 24,
//                    ),
//                    style: TextStyle(
//                        fontSize: 24,
//                        color: Colors.black,
//                        fontWeight: FontWeight.w100),
//                    onChanged: (String value) => {},
//                    items: countries
//                        .map<DropdownMenuItem<String>>((String color) =>
//                            DropdownMenuItem<String>(
//                                value: color, child: Text(color)))
//                        .toList(),
//                  ),
//                ),
//              ),
//            ),
//          ),
//          SizedBox(width: 10),
          Flexible(
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
              keyboardType: TextInputType.number,
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
                hintText: '612 34 56 78',
                hintStyle: TextStyle(
                    fontSize: 24,
                    color: color.withOpacity(0.3),
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
