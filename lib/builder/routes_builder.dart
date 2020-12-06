import 'package:beautiful_forms/builder/page_builder.dart';
import 'package:beautiful_forms/schema/form_page_schema.dart';
import 'package:flutter/material.dart';

class RoutesBuilder {
  static Map<String, Widget Function(BuildContext)> buildRoutes(
      context, List<FormPageSchema> pagesSchema) {
    Map<String, Widget Function(BuildContext)> routes = {};
    pagesSchema.forEach((schema) => routes
        .addAll({schema.route: (context) => PageBuilder.fromSchema(schema)}));
    return routes;
  }
}
