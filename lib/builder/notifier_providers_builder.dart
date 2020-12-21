import 'package:beautiful_forms/model/page_schema.dart';
import 'package:provider/provider.dart';
import 'package:beautiful_forms/widgets/providers/form_fields_notifier_provider.dart';

class NotifierProvidersBuilder {
  static List<ChangeNotifierProvider> fromSchema(
      List<FormPageSchema> pagesSchemas) {
    return [
      ChangeNotifierProvider(
          create: (_) => FormFieldsNotifierProvider(pagesSchemas)),
    ];
  }
}