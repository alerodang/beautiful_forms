import 'package:basic_utils/basic_utils.dart';
import 'package:beautiful_forms/model/option.dart';
import 'package:flutter/material.dart';

class SelectorButton extends StatelessWidget {
  final Option option;
  final String letter;
  final String nextRoute;

  SelectorButton({this.option, this.letter, this.nextRoute});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      padding: EdgeInsets.zero,
      child: Container(
        color: Theme.of(context).buttonColor.withOpacity(0.15),
        constraints: BoxConstraints(maxWidth: 150),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              width: 20,
              height: 20,
              child: Center(
                  child:
                  Text(letter, style: TextStyle(fontSize: 12))),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                border: Border.all(
                    color: Theme.of(context).buttonColor),
              ),
            ),
            Text(
              StringUtils.capitalize(option.text),
            ),
          ],
        ),
      ),
      hoverColor: Theme.of(context).buttonColor.withOpacity(0.3),
      borderSide: BorderSide(
        color: Theme.of(context).buttonColor,
      ),
        onPressed: () => Navigator.pushNamed(context, nextRoute),
      textColor: Theme.of(context).buttonColor,
    );
    // TODO Normal button not this
  }
}
