import 'package:beautiful_forms/model/page_schema.dart';
import 'package:beautiful_forms/widgets/pages/form_page.dart';
import 'package:beautiful_forms/widgets/pages/number_page.dart';
import 'package:beautiful_forms/widgets/pages/options_page.dart';
import 'package:beautiful_forms/widgets/pages/phone_number_page.dart';
import 'package:beautiful_forms/widgets/pages/portrait_page.dart';
import 'package:beautiful_forms/widgets/pages/string_page.dart';
import 'package:beautiful_forms/widgets/pages/end_page.dart';

class PageBuilder {

  static FormPage fromSchema(schema, int number) {
    switch (schema.runtimeType) {
      case PortraitPageSchema:
        return PortraitPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', imageRoute: schema.imageRoute, restaurantName: schema.restaurantName);
        break;
      case StringFieldInputPageSchema:
        return StringPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text,);
        break;
      case NumberFieldInputPageSchema:
        return NumberPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text,);
        break;
      case PhoneNumberFieldInputPageSchema:
        return PhoneNumberPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text,);
        break;
      case OptionInputPageSchema:
        return OptionPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', question: schema.question, text: schema.text, options: schema.options,);
        break;
      case EndPageSchema:
        return EndPage(number: number, nextRoute: '/${schema.nextPage}', name: schema.name, route: '/${schema.name}', imageRoute: schema.imageRoute, restaurantName: schema.restaurantName,);
        break;
      default:
        throw new Exception('No valid page schema type: ' + schema.type);
    }
  }
}