import 'package:flutter/foundation.dart';

class FormFieldsNotifierProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Map<String, dynamic> data;

  FormFieldsNotifierProvider(pageSchema) {
    data = {};
    pageSchema.forEach((element) {
      data.addAll({pageSchema.name: null});
    });
  }

  void updateData(key, value) {
    data[key] = value;
    
  }
}
