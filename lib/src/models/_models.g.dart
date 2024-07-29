// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
      postalCode: json['postalCode'] as String,
      postalDesignation: json['postalDesignation'] as String,
      city: json['city'] as String,
      coordinates: json['coordinates'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'postalDesignation': instance.postalDesignation,
      'city': instance.city,
      'coordinates': instance.coordinates,
    };

Allergen _$AllergenFromJson(Map<String, dynamic> json) => Allergen(
      id: (json['id'] as num).toInt(),
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$AllergenToJson(Allergen instance) => <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
      'color': instance.color,
      'icon': instance.icon,
    };

Campus _$CampusFromJson(Map<String, dynamic> json) => Campus(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      establishments: (json['establishments'] as List<dynamic>?)
          ?.map((e) => Establishment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CampusToJson(Campus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'establishments': instance.establishments,
    };

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$ContactTypeEnumMap, json['type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'type': _$ContactTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$ContactTypeEnumMap = {
  ContactType.email: 'EMAIL',
  ContactType.mobilephone: 'MOBILEPHONE',
  ContactType.telephone: 'TELEPHONE',
  ContactType.phoneExtension: 'PHONE_EXTENSION',
};

ContentTemplate _$ContentTemplateFromJson(Map<String, dynamic> json) =>
    ContentTemplate(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      periods: (json['periods'] as List<dynamic>)
          .map((e) => $enumDecode(_$PeriodEnumMap, e))
          .toList(),
      notes: json['notes'] as String,
      days: (json['days'] as List<dynamic>)
          .map((e) => WeekDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      dishTypes: (json['dishTypes'] as List<dynamic>)
          .map((e) => DishType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContentTemplateToJson(ContentTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'periods': instance.periods.map((e) => _$PeriodEnumMap[e]!).toList(),
      'notes': instance.notes,
      'days': instance.days,
      'dishTypes': instance.dishTypes,
    };

const _$PeriodEnumMap = {
  Period.lunch: 'LUNCH',
  Period.dinner: 'DINNER',
  Period.breakfast: 'BREAKFAST',
  Period.snackBar: 'SNACK',
};

WeekDay _$WeekDayFromJson(Map<String, dynamic> json) => WeekDay(
      id: (json['id'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      acronymPt: json['acronymPt'] as String,
      acronymEn: json['acronymEn'] as String,
      namePt: json['namePt'] as String,
      nameEn: json['nameEn'] as String,
    );

Map<String, dynamic> _$WeekDayToJson(WeekDay instance) => <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'acronymPt': instance.acronymPt,
      'acronymEn': instance.acronymEn,
      'namePt': instance.namePt,
      'nameEn': instance.nameEn,
    };

DayMenu _$DayMenuFromJson(Map<String, dynamic> json) => DayMenu(
      id: (json['id'] as num).toInt(),
      day: DateTime.parse(json['day'] as String),
      period: $enumDecode(_$PeriodEnumMap, json['period']),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      disabledReason: json['disabledReason'] as String?,
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DayMenuToJson(DayMenu instance) => <String, dynamic>{
      'id': instance.id,
      'day': instance.day.toIso8601String(),
      'period': _$PeriodEnumMap[instance.period]!,
      'status': _$StatusEnumMap[instance.status]!,
      'disabledReason': instance.disabledReason,
      'dishes': instance.dishes,
    };

const _$StatusEnumMap = {
  Status.published: 'PUBLISHED',
  Status.disabled: 'DISABLED',
};

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) => MenuItem(
      dish: Dish.fromJson(json['dish'] as Map<String, dynamic>),
      dishType: DishType.fromJson(json['dishType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MenuItemToJson(MenuItem instance) => <String, dynamic>{
      'dish': instance.dish,
      'dishType': instance.dishType,
    };

Dish _$DishFromJson(Map<String, dynamic> json) => Dish(
      id: (json['id'] as num).toInt(),
      photo: json['photo'] as String?,
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$DishToJson(Dish instance) => <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
      'notes': instance.notes,
    };

DishType _$DishTypeFromJson(Map<String, dynamic> json) => DishType(
      id: (json['id'] as num).toInt(),
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String?,
    );

Map<String, dynamic> _$DishTypeToJson(DishType instance) => <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
    };

Entity _$EntityFromJson(Map<String, dynamic> json) => Entity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logo: json['logo'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
      establishments: (json['establishments'] as List<dynamic>)
          .map((e) => Establishment.fromJson(e as Map<String, dynamic>))
          .toList(),
      supervisingEstablishments:
          (json['supervisingEstablishments'] as List<dynamic>)
              .map((e) => Establishment.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'address': instance.address,
      'contacts': instance.contacts,
      'establishments': instance.establishments,
      'supervisingEstablishments': instance.supervisingEstablishments,
    };

Establishment _$EstablishmentFromJson(Map<String, dynamic> json) =>
    Establishment(
      id: (json['id'] as num).toInt(),
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
      type: Type.fromJson(json['type'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      campus: Campus.fromJson(json['campus'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      capacity: (json['capacity'] as num?)?.toInt(),
      permanentMenu: json['permanentMenu'] as bool,
      dayMenu: json['dayMenu'] as bool,
    );

Map<String, dynamic> _$EstablishmentToJson(Establishment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
      'type': instance.type,
      'address': instance.address,
      'campus': instance.campus,
      'contacts': instance.contacts,
      'schedules': instance.schedules,
      'capacity': instance.capacity,
      'permanentMenu': instance.permanentMenu,
      'dayMenu': instance.dayMenu,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      id: (json['id'] as num).toInt(),
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
    };

PermanentMenu _$PermanentMenuFromJson(Map<String, dynamic> json) =>
    PermanentMenu(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num?)?.toDouble(),
      establishment:
          Establishment.fromJson(json['establishment'] as Map<String, dynamic>),
      dish: Dish.fromJson(json['dish'] as Map<String, dynamic>),
      menuCategory: json['menuCategory'] == null
          ? null
          : MenuCategory.fromJson(json['menuCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PermanentMenuToJson(PermanentMenu instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'establishment': instance.establishment,
      'dish': instance.dish,
      'menuCategory': instance.menuCategory,
    };

MenuCategory _$MenuCategoryFromJson(Map<String, dynamic> json) => MenuCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$MenuCategoryToJson(MenuCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      id: (json['id'] as num).toInt(),
      period: $enumDecodeNullable(_$PeriodEnumMap, json['period']),
      startHour: json['startHour'] as String,
      finishHour: json['finishHour'] as String,
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'id': instance.id,
      'period': _$PeriodEnumMap[instance.period],
      'startHour': instance.startHour,
      'finishHour': instance.finishHour,
    };
