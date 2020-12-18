import 'package:beautiful_forms/model/form_page_schema.dart';
import 'package:beautiful_forms/widgets/form_page.dart';
import 'package:beautiful_forms/widgets/pages/options_page.dart';
import 'package:beautiful_forms/widgets/pages/portrait_page.dart';
import 'package:beautiful_forms/widgets/pages/question_page.dart';

class PageBuilder {
  static FormPage fromSchema(FormPageSchema schema, int number) => _getPage(schema, number);

  static FormPage _getPage(FormPageSchema schema, int number) {
    switch (schema.type) {
      case 'portrait':
        return PortraitPage(schema: schema, number: number);
        break;
      case 'question':
        return QuestionPage(schema: schema, number: number);
        break;
      case 'options':
        return OptionsPage(schema: schema, number: number);
        break;
      default:
        throw new Exception('No valid page type: ' + schema.type);
    }
  }
}