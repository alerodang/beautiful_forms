import 'package:beautiful_forms/widgets/form_page.dart';
import 'package:beautiful_forms/schema/form_page_schema.dart';
import 'package:beautiful_forms/widgets/pages/portrait_page.dart';

class PageBuilder {
  static FormPage fromSchema(FormPageSchema schema) => new PortraitPage(schema, 'Tasca Galileo');
}
