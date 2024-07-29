part of up_menus.models;

@JsonSerializable()
class Campus {
  int id;
  String name;
  List<Establishment>? establishments;

  Campus({
    required this.id,
    required this.name,
    required this.establishments,
  });

  factory Campus.fromJson(Map<String, dynamic> json) => _$CampusFromJson(json);

  Map<String, dynamic> toJson() => _$CampusToJson(this);

  @override
  String toString() {
    return '<Campus>($name)';
  }
}