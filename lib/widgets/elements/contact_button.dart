import 'package:flutter/material.dart';
import 'package:beautiful_forms/services/messaging_service.dart';

class ContactButton extends StatelessWidget {
  final String message;
  final String nextRoute;

  const ContactButton({Key key, this.message, this.nextRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Theme.of(context).accentColor,
      onPressed: () async => MessageService.launchEmail('admin@misterrestaurant.es', '¡Quiero conoceros!'),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
