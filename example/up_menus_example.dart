import 'package:up_menus/up_menus.dart';

void main() async {
  final up_menus = UPMenusApi();

  // Get all establishments
  Iterable<Establishment> establishments = await up_menus.establishments.list();

  // Get a specific establishment
  Establishment feup_canteen = await up_menus.establishments.get(1);

  // Get current week's lunch menus from FEUP
  Iterable<DayMenu> dayMenus1 = await up_menus.dayMenus.get(feup_canteen.id, Period.lunch);

  // Get lunch menus from FEUP for a specific week
  Iterable<DayMenu> dayMenus2 = await up_menus.dayMenus.get(feup_canteen.id, Period.lunch, weekNumber: 29, year: 2024);

  // Get lunch menus from FEUP for a specific day
  Iterable<DayMenu> dayMenus3 = await up_menus.dayMenus.get(feup_canteen.id, Period.lunch, day: DateTime(2024, 7, 16));

  // Get lunch menus from FEUP for a specific date range
  Iterable<DayMenu> dayMenus4 = await up_menus.dayMenus.get(feup_canteen.id, Period.lunch, startDate: DateTime(2024, 7, 16), endDate: DateTime(2024, 7, 17));

  // Get all allergens
  Iterable<Allergen> allergens = await up_menus.allergens.list();

  // Get all campuses
  Iterable<Campus> campuses = await up_menus.campus.list();

  // Get all entities
  Iterable<Entity> entities = await up_menus.entities.list();

  // Get permanent menus from FEUP
  Iterable<PermanentMenu> pms = await up_menus.permanentMenus.get(feup_canteen.id);

  // Get permanent menus categories from FEUP
  Iterable<MenuCategory> mcs = await up_menus.permanentMenus.getCategories(feup_canteen.id);
}
