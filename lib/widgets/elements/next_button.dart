import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final String message;
  final String nextRoute;

  const NextButton({Key key, this.message, this.nextRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, top: 16),
      child: FlatButton(
        color: Theme.of(context).accentColor,
        onPressed: () => Navigator.pushNamed(context, nextRoute),
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
