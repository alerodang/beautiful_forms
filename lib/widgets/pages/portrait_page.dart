import 'package:beautiful_forms/widgets/elements/start_button.dart';
import 'package:beautiful_forms/widgets/pages/form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PortraitPage extends FormPage {
  final String restaurantName;
  final String imageRoute;
  final String text1;
  final String text2;
  final String buttonText;

  PortraitPage({this.restaurantName, this.imageRoute, this.text1, this.text2, this.buttonText, nextRoute, name, route, number,})
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
              imageRoute,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Divider(
              height: 50,
            ),
            Text(
              text1,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text(
              text2,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Divider(height: 40),
            StartButton(message: buttonText, nextRoute: nextRoute),
          ]),
        ),
      ]),
    );
  }
}
