library beautiful_forms;

import 'package:beautiful_forms/beautiful_form.dart';
import 'package:beautiful_forms/model/form_schema.dart';

class FormBuilder {
  static BeautifulForm fromSchema(FormSchema schema) => new BeautifulForm(
      title: schema.title,
      primaryColor: schema.color1,
      secondaryColor: schema.color2,
      fontFamily1: schema.fontFamily1,
      fontFamily2: schema.fontFamily2,
      initialPage: schema.initialPage,
      pagesSchemas: schema.pagesSchemas);
}
