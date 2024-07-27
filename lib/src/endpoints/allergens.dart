part of up_menus;

class Allergerns extends Endpoint {
  @override
  String get _path => '/allergerns'; //FIX(thePeras): after update the api, change to /allergens

  Allergerns(UPMenusApi api) : super(api);

  /// Retrieves an allergen with its [id]
  Future<Allergen> get(String id) async {
    var jsonString = await _api._get('$_path/$id');
    var map = json.decode(jsonString);
    return Allergen.fromJson(map);
  }

  /// Returns all the existing allergens
  Future<Iterable<Allergen>> list() async => _list(
      path: _path,
      fromJson: Allergen.fromJson);
}
