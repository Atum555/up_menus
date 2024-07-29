import 'package:json_annotation/json_annotation.dart';

enum Status {
  @JsonValue('PUBLISHED')
  published,

  @JsonValue('DISABLED')
  disabled,
}

extension StatusExtension on Status {
  String get value => _values[this]!;
}

const Map<Status, String> _values = {
  Status.published: 'PUBLISHED',
  Status.disabled: 'DISABLED',
};