import 'package:beautiful_forms/model/option.dart';
import 'package:beautiful_forms/widgets/elements/selector.dart';
import 'package:beautiful_forms/widgets/elements/question_info_text.dart';
import 'package:beautiful_forms/widgets/elements/question_text.dart';
import 'package:beautiful_forms/widgets/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OptionInputPage extends InputPage {
  static InputType pageType = InputType.option;
  final int number;
  final String question;
  final String text;
  final List<Option> options;

  OptionInputPage({this.number, this.question, this.text, this.options});

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
                  number: number
                ),
                Divider(height: 10),
                QuestionInfoText(text: text),
                Divider(height: 10),
                Divider(height: 10),
                Selector(color: Theme.of(context).accentColor, options: options, nextRoute: nextRoute),
              ]),
        ),
      ]),
    );
  }
}
