import 'package:beautiful_forms/widgets/pages/form_page.dart';

abstract class InputPage extends FormPage {
  static InputType inputType;
  final String question;
  final String text;

  InputPage({this.question, this.text, nextRoute, name, route, number}): super(nextRoute: nextRoute, name: name, route: route, number: number);
}

enum InputType {
  field,
  option
}