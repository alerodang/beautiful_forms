import 'package:beautiful_forms/widgets/pages/input_page.dart';

abstract class FieldPage extends InputPage {
  static InputType pageType = InputType.field;

  FieldPage({question, text, nextRoute, name, route, number})
      : super(
            question: question,
            text: text,
            nextRoute: nextRoute,
            name: name,
            route: route,
            number: number);
}

enum FieldInputType { number, string, phone }
