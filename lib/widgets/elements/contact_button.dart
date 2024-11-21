import 'package:flutter/material.dart';
import 'package:beautiful_forms/services/messaging_service.dart';

class ContactButton extends StatelessWidget {
  final String message;
  final String nextRoute;

  const ContactButton({
    required this.message,
    required this.nextRoute,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async => MessageService.launchEmail(
          'admin@misterrestaurant.es', '¡Quiero conoceros!'),
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
