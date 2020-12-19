import 'package:beautiful_forms/builder/page_builder.dart';
import 'package:beautiful_forms/model/page_schema.dart';
import 'package:flutter/material.dart';

class RoutesBuilder {
  static Map<String, Widget Function(BuildContext)> buildRoutes(context, List<FormPageSchema> pagesSchemas) {
    Map<String, Widget Function(BuildContext)> routes = {};
    pagesSchemas.asMap().forEach((i, pageSchema) => routes.addAll({
          '/${pageSchema.name}': (context) =>
              PageBuilder.fromSchema(pageSchema, i)
        }));
    return routes;
  }
}
