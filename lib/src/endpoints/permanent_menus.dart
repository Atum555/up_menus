part of up_menus;

class PermanentMenus extends Endpoint {
  @override
  String get _path => '/establishments';

  PermanentMenus(UPMenusApi api) : super(api);

  /// Retrieves the permanent menus from establishment given its [establishmentId]
  Future<Iterable<PermanentMenu>> get(int establishmentId) async => _list(
      path: "$_path/$establishmentId/permanent-menus",
      fromJson: PermanentMenu.fromJson);

  /// Retrieves the permanent menu categories from establishment given its [establishmentId]
  Future<Iterable<MenuCategory>> getCategories(int establishmentId) async => _list(
    path: "$_path/$establishmentId/permanent-menus/categories",
    fromJson: MenuCategory.fromJson);
}
