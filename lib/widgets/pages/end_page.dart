import 'package:beautiful_forms/widgets/elements/start_button.dart';
import 'package:beautiful_forms/widgets/pages/form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PortraitPage extends FormPage {
  final String restaurantName;

  PortraitPage({nextRoute, name, route, number, this.restaurantName})
      : super(nextRoute: nextRoute, name: name, route: route, number: number);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

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
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Divider(
              height: 50,
            ),
            Text(
              '¡Bienvenido a la app de los restaurantes!',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text(
              'Estas a punto de entrar en la cola de $restaurantName. Una vez te apuntes te avisaremos cuando sea tu turno para que puedas aprovechar el tiempo. ',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Divider(height: 40),
            StartButton(message: '¡Quiero Apuntarme!', nextRoute: nextRoute),
          ]),
        ),
      ]),
    );
  }
}
