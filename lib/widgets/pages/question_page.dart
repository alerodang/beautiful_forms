import 'package:beautiful_forms/schema/form_page_schema.dart';
import 'package:beautiful_forms/widgets/elements/nextButton.dart';
import 'package:beautiful_forms/widgets/elements/questionInfoText.dart';
import 'package:beautiful_forms/widgets/elements/questionText.dart';
import 'package:beautiful_forms/widgets/elements/questionTextInput.dart';
import 'package:beautiful_forms/widgets/elements/submitButton.dart';
import 'package:beautiful_forms/widgets/form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionPage extends FormPage {
  final FormPageSchema schema;
  final int number;

  QuestionPage({this.schema, this.number}) : super(schema: schema);

  TextInputType _getTextInputType(String inputType) {
    switch (inputType) {
      case 'text':
        return TextInputType.text;
        break;
      case 'number':
        return TextInputType.number;
        break;
      default:
        throw Exception('not valis input type in QuestionPage object: $inputType');
    }
  }

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
                  question: schema.question,
                  number: number,
                  accentColor: Color(schema.accentColor),
                ),
                Divider(height: 10),
                QuestionInfoText(text: schema.text),
                Divider(height: 10),
                Divider(height: 10),
                QuestionTextInput(color: Color(schema.accentColor),  ),
                // TODO create button widget and show only if the input was written
                schema.nextRoute != null
                    ? NextButton(
                        message: 'Siguiente', nextRoute: schema.nextRoute)
                    : SubmitButton(
                        message: 'Enviar Respuestas')
              ]),
        ),
      ]),
    );
  }
}
