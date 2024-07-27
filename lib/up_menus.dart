/// A dart library for the UP Menus API.
library up_menus;
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'src/models/_models.dart';
export 'src/models/_models.dart';

part 'src/up_menus_api.dart';

part 'src/endpoints/abstract_endpoint.dart';
part 'src/endpoints/Allergens.dart';
part 'src/endpoints/campus.dart';
part 'src/endpoints/entities.dart';
part 'src/endpoints/establishments.dart';

