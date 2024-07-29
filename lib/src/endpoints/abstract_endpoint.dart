part of up_menus;

abstract class Endpoint {
  // ignore: unused_element
  String get _path;

  final UPMenusApi _api;

  Endpoint(this._api);

  // ignore: unused_element
  Future<String> _get(String path) => _api._get(path);

  /// Generic method that converts requested json arrays into
  /// [T] iterables with the given [toJson] function
  Future<Iterable<T>> _list<T>(
      {required String path,
      required T Function(Map<String, dynamic>) fromJson}) async {
    var jsonString = await _api._get(path);
    final tJson = jsonDecode(jsonString) as Iterable<dynamic>;
    return tJson.map((json) => fromJson(json));
  }
}
