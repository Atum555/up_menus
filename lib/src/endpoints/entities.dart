part of up_menus;

class Entities extends Endpoint {
  @override
  String get _path => '/entities';

  Entities(UPMenusApi api) : super(api);

  /// Retrieves an entity with its [id]
  Future<Entity> get(String id) async {
    var jsonString = await _api._get('$_path/$id');
    var map = json.decode(jsonString);
    return Entity.fromJson(map);
  }

  /// Returns all the existing entities
  Future<Iterable<Entity>> list() async => _list(
      path: _path,
      fromJson: Entity.fromJson);
}
