import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String message;
  final String nextRoute;

  const StartButton({
    required this.message,
    required this.nextRoute,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, nextRoute),
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
