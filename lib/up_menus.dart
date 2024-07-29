/// A dart library for the UP Menus API.
library up_menus;
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'src/models/_models.dart';
export 'src/models/_models.dart';
import 'src/models/enums/period.dart';
export 'src/models/enums/period.dart';
export 'src/models/enums/status.dart';

part 'src/up_menus_api.dart';
part 'src/endpoints/abstract_endpoint.dart';
part 'src/endpoints/allergens.dart';
part 'src/endpoints/campus.dart';
part 'src/endpoints/entities.dart';
part 'src/endpoints/establishments.dart';
part 'src/endpoints/day_menus.dart';
part 'src/endpoints/permanent_menus.dart';

