import 'package:basic_utils/basic_utils.dart';
import 'package:beautiful_forms/model/option.dart';
import 'package:flutter/material.dart';

class SelectorButton extends StatelessWidget {
  final Option option;
  final String letter;
  final String nextRoute;
  final Function(String, dynamic) onChange;
  final String field;

  SelectorButton(
      {this.option, this.letter, this.nextRoute, this.onChange, this.field});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      padding: EdgeInsets.zero,
      child: Container(
        color: Theme.of(context).accentColor.withOpacity(0.15),
        constraints: BoxConstraints(maxWidth: 150),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              width: 20,
              height: 20,
              child:
                  Center(child: Text(letter, style: TextStyle(fontSize: 12))),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border.all(color: Theme.of(context).accentColor),
              ),
            ),
            Text(
              StringUtils.capitalize(option.text),
            ),
          ],
        ),
      ),
      hoverColor: Theme.of(context).accentColor.withOpacity(0.3),
      borderSide: BorderSide(
        color: Theme.of(context).accentColor,
      ),
      onPressed: () => {this.onChange(field, option.value), Navigator.pushNamed(context, nextRoute)},
      textColor: Theme.of(context).accentColor,
    );
    // TODO Normal button not this
  }
}
