import 'package:beautiful_forms/model/option.dart';
import 'package:beautiful_forms/widgets/elements/selector.dart';
import 'package:beautiful_forms/widgets/elements/question_info_text.dart';
import 'package:beautiful_forms/widgets/elements/question_text.dart';
import 'package:beautiful_forms/widgets/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class FieldInputPage extends InputPage {
  static InputType pageType = InputType.field;

  static bool validateInput;

  FieldInputPage({question, text, nextRoute, name, route, number}) : super(question: question, text: text, nextRoute: nextRoute, name: name, route: route, number: number);

}

enum FieldInputType {
  number,
  string,
  phone
}