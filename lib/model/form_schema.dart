library beautiful_forms;

import 'package:beautiful_forms/model/page_schema.dart';

class FormSchema {
  final int color1;
  final int color2;
  final String fontFamily1;
  final String fontFamily2;
  final String initialPage;
  final List<FormPageSchema> pagesSchemas;
  final String title;

  FormSchema(
    this.color1,
    this.color2,
    this.fontFamily1,
    this.fontFamily2,
    this.initialPage,
    this.pagesSchemas,
    this.title,
  );

  FormSchema.fromJson(Map<String, dynamic> json)
      : color1 = json['color1'],
        color2 = json['color2'],
        fontFamily1 = json['fontFamily1'],
        fontFamily2 = json['fontFamily2'],
        initialPage = json['initialPage'],
        pagesSchemas = json['pagesSchemas']
            .map<FormPageSchema>(
                (e) => FormSchema.getPageSchema(e['type'], e['data']))
            .toList(),
        title = json['title'];

  static FormPageSchema getPageSchema(type, Map<String, dynamic> data) {
    switch (type) {
      case 'PortraitPageSchema':
        return PortraitPageSchema.fromJson(data);
        break;
      case 'OptionInputPageSchema':
        return OptionInputPageSchema.fromJson(data);
        break;
      case 'StringFieldInputPageSchema':
        return StringFieldInputPageSchema.fromJson(data);
        break;
      case 'NumberFieldInputPageSchema':
        return NumberFieldInputPageSchema.fromJson(data);
        break;
      case 'PhoneNumberFieldInputPageSchema':
        return PhoneNumberFieldInputPageSchema.fromJson(data);
        break;
      case 'EndPageSchema':
        return EndPageSchema.fromJson(data);
        break;
      default:
        throw Exception('Not valid page $type');
    }
  }
}
