import 'package:basic_utils/basic_utils.dart';
import 'package:beautiful_forms/model/option.dart';
import 'package:flutter/material.dart';

class SelectorButton extends StatelessWidget {
  final Option option;
  final String letter;
  final String nextRoute;
  final Function(String, dynamic) onChange;
  final String field;

  SelectorButton({
    required this.option,
    required this.letter,
    required this.nextRoute,
    required this.onChange,
    required this.field,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Container(
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(maxWidth: 150),
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.15),
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
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            Text(
              StringUtils.capitalize(option.text),
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
      style: ButtonStyle(

        side: WidgetStatePropertyAll(BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        )),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered))
              return Theme.of(context).colorScheme.secondary.withOpacity(0.3);
            return Theme.of(context).colorScheme.secondary.withOpacity(0.15); // Defer to the widget's default.
          },
        ),
      ),
      onPressed: () => {
        this.onChange(field, option.value),
        Navigator.pushNamed(context, nextRoute)
      },
    );
  }
}
