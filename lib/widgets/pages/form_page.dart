import 'package:flutter/material.dart';

abstract class FormPage extends StatelessWidget {
  final String? nextRoute;
  final String name;
  final String route;
  final int number;

  FormPage({
    this.nextRoute,
    required this.name,
    required this.route,
    required this.number,
  });
}
