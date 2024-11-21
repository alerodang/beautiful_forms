import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String message;

  const SubmitButton({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 43, top: 16),
      child: TextButton(
        onPressed: () => {}, // TODO
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
