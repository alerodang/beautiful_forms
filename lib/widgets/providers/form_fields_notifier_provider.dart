import 'package:flutter/foundation.dart';

import '../../model/page_schema.dart';

class FormFieldsNotifierProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Map<String, dynamic> data = {};
  final Function onSubmit;

  FormFieldsNotifierProvider(
    List<FormPageSchema> pagesSchemas,
    this.onSubmit,
  ) {
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
