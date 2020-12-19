import 'package:beautiful_forms/model/page_schema.dart';
import 'package:beautiful_forms/widgets/pages/form_page.dart';
import 'package:beautiful_forms/widgets/pages/number_field_input_page.dart';
import 'package:beautiful_forms/widgets/pages/options_input_page.dart';
import 'package:beautiful_forms/widgets/pages/portrait_page.dart';
import 'package:beautiful_forms/widgets/pages/string_field_input_page.dart';

class PageBuilder {

  static FormPage fromSchema(schema, int number) {
    switch (schema.runtimeType) {
      case PortraitPageSchema:
        return PortraitPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', restaurantName: schema.restaurantName);
        break;
      case StringFieldInputPageSchema:
        return StringFieldInputPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text,);
        break;
      case NumberFieldInputPageSchema:
        return NumberFieldInputPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text,);
        break;
      case OptionInputPageSchema:
        return OptionInputPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text, options: schema.options);
        break;
      default:
        throw new Exception('No valid page type: ' + schema.type);
    }
  }
}