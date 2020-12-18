import 'package:json_annotation/json_annotation.dart';

part 'option.g.dart';

@JsonSerializable(nullable: false)
class Option {
  final String text;
  final String value;

  Option({this.text, this.value});

  factory Option.fromJson(Map<String, dynamic> json) =>
      _$OptionFromJson(json);

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
