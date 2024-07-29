<!-- 
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A Dart package to interact with the University of Porto's canteens menus API.
This package is a wrapper around the [UPMenus API](https://ementas.sas.up.pt:39779/).

## Features

- Get the list of establishments
- Get the menu for a specific day, week, period and establishment
- Get permanent menus of an establishment

## Usage


```dart
final up_menus = UPMenusApi();

final establishments =  await up_menus.establishments.list(); 

final dayMenus = await up_menus.dayMenus.get(feup_canteen.id, Period.lunch);
final dayMenus = await up_menus.dayMenus.get(feup_canteen.id, Period.lunch, weekNumber: 29, year: 2024);

```
