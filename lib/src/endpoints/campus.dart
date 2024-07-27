part of up_menus;

class Campuses extends Endpoint {
  @override
  String get _path => '/campus';

  Campuses(UPMenusApi api) : super(api);

  /// Retrieves an establishment with its [id]
  Future<Campus> get(String id) async {
    var jsonString = await _api._get('$_path/$id');
    var map = json.decode(jsonString);
    return Campus.fromJson(map);
  }

  /// Returns all the existing establishments
  Future<Iterable<Campus>> list() async => _list(
      path: _path,
      fromJson: Campus.fromJson);
}
