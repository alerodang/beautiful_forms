import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String message;

  const SubmitButton({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, top: 16),
      child: FlatButton(
        color: Theme.of(context).accentColor,
        onPressed: () => {}, // TODO
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
