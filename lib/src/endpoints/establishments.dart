part of up_menus;

class Establishments extends Endpoint {
  @override
  String get _path => '/establishments';

  Establishments(UPMenusApi api) : super(api);

  /// Retrieves an establishment with its [establishmentId]
  Future<Establishment> get(int establishmentId) async {
    var jsonString = await _api._get('$_path/$establishmentId');
    var map = json.decode(jsonString);

    return Establishment.fromJson(map);
  }

  // Returns the content template of a given [establishmentId]
  Future<Establishment> getContentTemplate(int establishmentId) async {
    var jsonString = await _api._get('$_path/$establishmentId/content-template');
    var map = json.decode(jsonString);

    return Establishment.fromJson(map);
  }

  /// Returns all the existing establishments
  /// TODO(thePeras): Add filters: type, campus, etc
  Future<Iterable<Establishment>> list() async => _list(
      path: _path,
      fromJson: Establishment.fromJson);

  /// Returns all the existing establishments types
  Future<Iterable<Type>> get types async => _list(
      path: "$_path/types",
      fromJson: Type.fromJson);
}
