import 'package:beautiful_forms/model/form_page_schema.dart';
import 'package:flutter/material.dart';

abstract class FormPage extends StatelessWidget {
  final FormPageSchema schema;

  // TODO
  TextInputType _getTextInputType(String inputType) {
    switch (inputType) {
      case 'text':
        return TextInputType.text;
        break;
      case 'number':
        return TextInputType.number;
        break;
      default:
        throw Exception('not valis input type in QuestionPage object: $inputType');
    }
  }

  FormPage({this.schema});
}
