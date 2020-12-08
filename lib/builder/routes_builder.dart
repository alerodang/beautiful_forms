import 'package:beautiful_forms/builder/page_builder.dart';
import 'package:beautiful_forms/schema/form_schema.dart';
import 'package:flutter/material.dart';

class RoutesBuilder {
  static Map<String, Widget Function(BuildContext)> buildRoutes(
      context, FormSchema formSchema) {
    Map<String, Widget Function(BuildContext)> routes = {};
    formSchema.pagesSchemas.asMap().forEach((i, schema) => routes.addAll(
        {schema.route: (context) => PageBuilder.fromSchema(schema, i)}));
    return routes;
  }
}
