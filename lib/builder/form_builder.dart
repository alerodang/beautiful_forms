library beautiful_forms;

import 'package:beautiful_forms/widgets/form.dart';
import 'package:beautiful_forms/model/form_schema.dart';

class FormBuilder {
  static Form fromSchema(FormSchema schema) => new Form(schema);
}