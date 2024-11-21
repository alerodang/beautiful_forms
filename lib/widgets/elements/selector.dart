import 'package:beautiful_forms/model/option.dart';
import 'package:beautiful_forms/widgets/elements/selector_button.dart';
import 'package:flutter/material.dart';
import 'package:beautiful_forms/widgets/providers/form_fields_notifier_provider.dart';
import 'package:provider/provider.dart';

class Selector extends StatelessWidget {
  final List<Option> options;
  final Color color;
  final String nextRoute;
  final String field;

  const Selector({
    required this.options,
    required this.color,
    required this.nextRoute,
    required this.field,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 43),
      child: Column(
          children: options
              .map((e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectorButton(
                          option: e,
                          letter: String.fromCharCode(65 + options.indexOf(e)),
                          nextRoute: nextRoute,
                          onChange:
                              Provider.of<FormFieldsNotifierProvider>(context)
                                  .updateData,
                          field: field,
                        ),
                        Divider(
                          height: 10,
                        )
                      ]))
              .toList()),
    );
  }
}
