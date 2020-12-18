import 'package:beautiful_forms/model/form_page_schema.dart';
import 'package:beautiful_forms/widgets/elements/next_button.dart';
import 'package:beautiful_forms/widgets/elements/selector.dart';
import 'package:beautiful_forms/widgets/elements/question_info_text.dart';
import 'package:beautiful_forms/widgets/elements/question_text.dart';
import 'package:beautiful_forms/widgets/elements/submit_button.dart';
import 'package:beautiful_forms/widgets/form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OptionsPage extends FormPage {
  final FormPageSchema schema;
  final int number;

  OptionsPage({this.schema, this.number}) : super(schema: schema);

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
                // TODO think if this should be inside questionInfoTExt widget
                QuestionInfoText(text: schema.text),
                Divider(height: 10),
                Divider(height: 10),
                Selector(
                    color: Color(schema.accentColor), options: schema.options, nextRoute: schema.nextRoute),
              ]),
        ),
      ]),
    );
  }
}
