import 'package:basic_utils/basic_utils.dart';
import 'package:beautiful_forms/model/option.dart';
import 'package:beautiful_forms/widgets/elements/selector_button.dart';
import 'package:flutter/material.dart';

class Selector extends StatelessWidget {
  final List<Option> options;
  final Color color;
  final String nextRoute;

  const Selector({this.options, this.color, this.nextRoute});

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
                        ),
                        Divider(
                          height: 10,
                        )
                      ]))
              .toList()),
    );
  }
}
