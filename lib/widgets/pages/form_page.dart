import 'package:beautiful_forms/model/page_schema.dart';
import 'package:flutter/material.dart';

abstract class FormPage extends StatelessWidget {
  final String nextRoute;
  final String name;
  final String route;
  final int number;

  FormPage({this.nextRoute, this.name, this.route, this.number});
}