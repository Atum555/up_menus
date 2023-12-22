enum Status {
  published,
  disabled,
}

Status statusFromJson(String value) {
  switch (value) {
    case 'published':
      return Status.published;
    case 'disabled':
      return Status.disabled;
    default:
      throw ArgumentError.value(value, 'value', 'Invalid status');
  }
}

String statusToJson(Status instance) {
  switch (instance) {
    case Status.published:
      return 'published';
    case Status.disabled:
      return 'disabled';
    default:
      throw ArgumentError.value(instance, 'instance', 'Invalid status');
  }
}