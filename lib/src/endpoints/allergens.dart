part of up_menus;

class Allergens extends Endpoint {
  @override
  String get _path => '/allergens';

  Allergens(UPMenusApi api) : super(api);

  /// Retrieves an allergen with its [allergenId]
  Future<Allergen> get(int allergenId) async {
    var jsonString = await _api._get('$_path/$allergenId');
    var map = json.decode(jsonString);
    return Allergen.fromJson(map);
  }

  /// Returns all the existing allergens
  Future<Iterable<Allergen>> list() async =>
      _list(path: _path, fromJson: Allergen.fromJson);
}
