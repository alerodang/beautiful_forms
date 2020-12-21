import 'package:flutter/foundation.dart';
import 'package:beautiful_forms/model/page_schema.dart';

class FormFieldsNotifierProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Map<String, dynamic> data;

  FormFieldsNotifierProvider(List<FormPageSchema> pagesSchemas) {
    data = {};
    pagesSchemas.forEach((e) {
      data.addAll({e.name: null});
    });
  }

  void updateData(String key, dynamic value) {
    data[key] = value;
    notifyListeners();
    print('<><><><><><><> data: $data');
  }
}
