import 'package:flutter/foundation.dart';
import 'package:beautiful_forms/model/page_schema.dart';

class FormFieldsNotifierProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Map<String, dynamic> data;
  final Function onSubmit;

  FormFieldsNotifierProvider(
      List<FormPageSchema> pagesSchemas, this.onSubmit) {
    data = {};

    pagesSchemas.forEach((e) {
      if (!(<String>['end', 'portrait'].contains(e.name))) {
        data.addAll({e.name: null});
      }
    });
  }

  void updateData(String key, dynamic value) {
    data[key] = value;
    notifyListeners();
  }
}