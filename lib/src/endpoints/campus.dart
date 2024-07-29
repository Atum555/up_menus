part of up_menus;

class Campuses extends Endpoint {
  @override
  String get _path => '/campus';

  Campuses(UPMenusApi api) : super(api);

  /// Retrieves a campus with its [campusId]
  Future<Campus> get(int campusId) async {
    var jsonString = await _api._get('$_path/$campusId');
    var map = json.decode(jsonString);
    return Campus.fromJson(map);
  }

  /// Returns all the existing campuses
  Future<Iterable<Campus>> list() async => _list(
      path: _path,
      fromJson: Campus.fromJson);
}
