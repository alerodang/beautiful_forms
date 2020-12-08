import 'package:beautiful_forms/schema/form_page_schema.dart';
import 'package:flutter/material.dart';

abstract class FormPage extends StatelessWidget {
  final FormPageSchema schema;

  FormPage({this.schema});
}
