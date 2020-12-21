import 'package:beautiful_forms/widgets/elements/next_button.dart';
import 'package:beautiful_forms/widgets/elements/question_info_text.dart';
import 'package:beautiful_forms/widgets/elements/question_phone_number_input.dart';
import 'package:beautiful_forms/widgets/elements/question_text.dart';
import 'package:beautiful_forms/widgets/elements/submit_button.dart';
import 'package:beautiful_forms/widgets/pages/field_input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberFieldInputPage extends FieldInputPage {
  static FieldInputType fieldInputType = FieldInputType.string;


  PhoneNumberFieldInputPage({question, text, nextRoute, name, route, number}) : super(question: question, text: text, nextRoute: nextRoute, name: name, route: route, number: number);

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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionText(
                  question: question,
                  number: number,
                  accentColor: Theme.of(context).accentColor,
                ),
                Divider(height: 10),
                QuestionInfoText(text: text),
                Divider(height: 10),
                Divider(height: 10),
                QuestionPhoneNumberInput(color: Theme.of(context).accentColor),
                nextRoute != null
                    ? NextButton(
                        message: 'Siguiente', nextRoute: nextRoute)
                    : SubmitButton(
                        message: 'Enviar Respuestas')
              ]),
        ),
      ]),
    );
  }
}
