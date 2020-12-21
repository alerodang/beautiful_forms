import 'package:beautiful_forms/model/option.dart';
import 'package:beautiful_forms/widgets/elements/selector.dart';
import 'package:beautiful_forms/widgets/elements/question_info_text.dart';
import 'package:beautiful_forms/widgets/elements/question_text.dart';
import 'package:beautiful_forms/widgets/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OptionPage extends InputPage {
  static InputType pageType = InputType.option;
  final List<Option> options;

  OptionPage({this.options, question, text, nextRoute, name, route, number})
      : super(
            question: question,
            text: text,
            nextRoute: nextRoute,
            name: name,
            route: route,
            number: number);

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
                QuestionText(question: question, number: number),
                Divider(height: 10),
                QuestionInfoText(text: text),
                Divider(height: 10),
                Divider(height: 10),
                Selector(
                  color: Theme.of(context).accentColor,
                  options: options,
                  nextRoute: nextRoute,
                  field: name,
                ),
              ]),
        ),
      ]),
    );
  }
}
