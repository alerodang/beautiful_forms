import 'package:beautiful_forms/model/option.dart';
import 'package:beautiful_forms/widgets/pages/field_input_page.dart';
import 'package:beautiful_forms/widgets/pages/input_page.dart';

class FormPageSchema {
  final String name;
  final String nextPage;

  FormPageSchema({
    this.name,
    this.nextPage,
  });
}

class PortraitPageSchema extends FormPageSchema {
  final String text;
  final String restaurantName;

  PortraitPageSchema({this.text, this.restaurantName, name, nextPage})
      : super(name: name, nextPage: nextPage);

  static PortraitPageSchema fromJson(Map<String, dynamic> json) {
    return new PortraitPageSchema(
        text: json['text'],
        restaurantName: json['restaurantName'],
        name: json['name'],
        nextPage: json['nextPage']);
  }
}

class InputPageSchema extends FormPageSchema {
  static InputType inputType;
  final String question;
  final String text;

  InputPageSchema({
    this.question,
    this.text,
    name,
    nextPage,
  }) : super(
          name: name,
          nextPage: nextPage,
        );

  static InputPageSchema fromJson(Map<String, dynamic> json) {
    return new InputPageSchema(
        question: json['question'],
        text: json['text'],
        name: json['name'],
        nextPage: json['nextPage']);
  }
}

class FieldInputPageSchema extends InputPageSchema {
  static InputType inputType = InputType.field;

  FieldInputPageSchema({
    question,
    text,
    name,
    nextPage,
  }) : super(question: question, text: text, name: name, nextPage: nextPage);

  static StringFieldInputPageSchema fromJson(Map<String, dynamic> json) {
    return new StringFieldInputPageSchema(
        question: json['question'],
        text: json['text'],
        name: json['name'],
        nextPage: json['nextPage']);
  }
}

class StringFieldInputPageSchema extends FieldInputPageSchema {
  static FieldInputType textInputType = FieldInputType.string;

  StringFieldInputPageSchema({
    question,
    text,
    name,
    nextPage,
  }) : super(question: question, text: text, name: name, nextPage: nextPage);

  static StringFieldInputPageSchema fromJson(Map<String, dynamic> json) {
    return new StringFieldInputPageSchema(
        question: json['question'],
        text: json['text'],
        name: json['name'],
        nextPage: json['nextPage']);
  }
}

class NumberFieldInputPageSchema extends FieldInputPageSchema {
  static FieldInputType textInputType = FieldInputType.number;

  NumberFieldInputPageSchema({
    question,
    text,
    name,
    nextPage,
  }) : super(
          question: question,
          text: text,
          name: name,
          nextPage: nextPage,
        );

  static NumberFieldInputPageSchema fromJson(Map<String, dynamic> json) {
    return new NumberFieldInputPageSchema(
        question: json['question'],
        text: json['text'],
        name: json['name'],
        nextPage: json['nextPage']);
  }
}

class PhoneNumberInputPageSchema extends FieldInputPageSchema {
  static FieldInputType textInputType = FieldInputType.phone;

  PhoneNumberInputPageSchema({
    question,
    text,
    name,
    nextPage,
  }) : super(
          question: question,
          text: text,
          name: name,
          nextPage: nextPage,
        );

  static PhoneNumberInputPageSchema fromJson(Map<String, dynamic> json) {
    return new PhoneNumberInputPageSchema(
        question: json['question'],
        text: json['text'],
        name: json['name'],
        nextPage: json['nextPage']);
  }
}

class OptionInputPageSchema extends InputPageSchema {
  static InputType inputType = InputType.option;
  final List<Option> options;

  OptionInputPageSchema({this.options, question, text, name, nextPage})
      : super(question: question, text: text, name: name, nextPage: nextPage);

  static OptionInputPageSchema fromJson(Map<String, dynamic> json) {
    return new OptionInputPageSchema(
        question: json['question'],
        name: json['name'],
        options: json['options']
            .map<Option>((e) => Option(text: e['text'], value: e['value'])).toList(),
        text: json['text'],
        nextPage: json['nextPage']);
  }
}
