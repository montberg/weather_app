import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

abstract base class StorageService {
  /// locale saved in preferences
  String? get locale;

  /// theme saved in preferences
  ThemeMode get themeMode;

  /// cities saved in preferences
  List<GeoObject>? get cities;

  /// Saves locale to prefs
  Future<void> saveLocale(Locale locale);

  /// Saves theme to prefs
  Future<void> saveTheme(ThemeMode theme);

  /// saves city key to prefs
  Future<void> addCity(GeoObject city);

  ///removes city key from prefs
  Future<void> removeCity(GeoObject city);
}

final class StorageServiceImpl extends StorageService {
  final SharedPreferences _preferences;

  StorageServiceImpl({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  final _localeKey = 'locale';

  final _themeKey = 'theme';

  final _citiesKey = 'savedCities';

  String? _locale;

  String? _themeName;

  List<GeoObject>? _savedCities;

  @override
  String? get locale {
    _locale ??= _preferences.getString(_localeKey);
    return _locale;
  }

  @override
  ThemeMode get themeMode {
    _themeName ??= _preferences.getString(_themeKey);
    switch (_themeName) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }

  @override
  List<GeoObject>? get cities {
    final String? citiesJsonString = _preferences.getString(_citiesKey);

    List<GeoObject> cities = [];

    if (citiesJsonString != null && citiesJsonString.isNotEmpty) {
      final List<dynamic> jsonList = jsonDecode(citiesJsonString);
      cities = jsonList.map((json) => GeoObject.fromJson(json)).toList();
    }

    _savedCities ??= cities;
    return _savedCities;
  }

  @override
  Future<void> saveLocale(Locale locale) async {
    try {
      await _preferences.setString(_localeKey, locale.languageCode);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> saveTheme(ThemeMode theme) async {
    try {
      await _preferences.setString(_themeKey, theme.name);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> removeCity(GeoObject city) async {
    try {
      final String? citiesJsonString = _preferences.getString(_citiesKey);

      if (citiesJsonString == null || citiesJsonString.isEmpty) {
        return;
      }

      final List<dynamic> jsonList = jsonDecode(citiesJsonString);

      List<GeoObject> cities =
          jsonList.map((json) => GeoObject.fromJson(json)).toList();

      cities.removeWhere((existingCity) => existingCity.key == city.key);

      await _preferences.setString(
          _citiesKey, jsonEncode(cities.map((geo) => geo.toJson()).toList()));
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> addCity(GeoObject city) async {
    try {
      final String? citiesJsonString = _preferences.getString(_citiesKey);

      List<GeoObject> cities = [];

      if (citiesJsonString != null && citiesJsonString.isNotEmpty) {
        final List<dynamic> jsonList = jsonDecode(citiesJsonString);
        cities = jsonList.map((json) => GeoObject.fromJson(json)).toList();
      }

      cities.add(city);

      final String updatedCitiesJsonString =
          jsonEncode(cities.map((geo) => geo.toJson()).toList());

      await _preferences.setString(_citiesKey, updatedCitiesJsonString);
    } on Exception {
      rethrow;
    }
  }
}
