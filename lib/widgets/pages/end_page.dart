import 'package:beautiful_forms/widgets/elements/contact_button.dart';
import 'package:beautiful_forms/widgets/pages/form_page.dart';
import 'package:beautiful_forms/widgets/providers/form_fields_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class EndPage extends FormPage {
  final String restaurantName;
  final String imageRoute;

  EndPage({this.restaurantName, this.imageRoute, nextRoute, name, route, number})
      : super(nextRoute: nextRoute, name: name, route: route, number: number);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    var provider = Provider.of<FormFieldsNotifierProvider>(context);

//    var formattedData = provider.format(provider.data);

    provider.onSubmit(provider.data);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          constraints: BoxConstraints(maxWidth: 700),
          padding: EdgeInsets.all(40),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/app_logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Divider(height: 20),
            Text(
              '¡Muchas gracias por utilizar Mister Restaurant!',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Divider(height: 40),
            ContactButton(
                message: 'Contacta con nosotros', nextRoute: nextRoute),
          ]),
        ),
      ]),
    );
  }
}
