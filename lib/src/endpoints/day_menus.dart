part of up_menus;

class DayMenus extends Endpoint {
  @override
  String get _path => '/establishments';

  DayMenus(UPMenusApi api) : super(api);

  bool _checkNullAndNotNull(Object? a, Object? b) {
    return (a == null && b != null) || (a != null && b == null);
  }

  bool _bothNotNull(Object? a, Object? b) {
    return a != null && b != null;
  }

  /// Retrieves day menus from establishment given its [establishmentId] and [period]
  /// Optionally, you can specify
  /// 1. A [weekNumber] and [year]
  /// 2. A [startDate] and [endDate]
  /// 3. A single [day]
  Future<Iterable<DayMenu>> get(int establishmentId, Period period,
      {int? weekNumber,
      int? year,
      DateTime? startDate,
      DateTime? endDate,
      DateTime? day}) async {
    // Validate the parameters
    if (_checkNullAndNotNull(weekNumber, year)) {
      throw ArgumentError('year and weekNumber must be provided together');
    }
    if (_checkNullAndNotNull(startDate, endDate)) {
      throw ArgumentError('startDate and endDate must be provided together');
    }

    // Building the url
    String url = '$_path/$establishmentId/day-menus?period=${period.value}';

    if (_bothNotNull(weekNumber, year)) {
      url += '&weekNumber=$weekNumber&year=$year';
    } else if (_bothNotNull(startDate, endDate)) {
      url += "&startDate=";
      url += '${startDate!.year}-${startDate.month}-${startDate.year}';
      url += "&endDate=";
      url += '${endDate!.year}-${endDate.month}-${endDate.year}';
    } else if (day != null) {
      url += '&day=${day.toIso8601String()}';
    } else {
      url +=
          '&currentWeek'; // TODO(thePeras): Delete this when the api is updated
    }

    print(url);

    return await _list(path: url, fromJson: DayMenu.fromJson);
  }
}
