// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';
import 'package:weather_application/core/data/storage_service.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/core/extensions/exception_extension.dart';
import 'package:weather_application/core/navigation/app_router.dart';
import 'package:weather_application/features/city_search/domain/use_case/city_search_use_case.dart';
import 'package:weather_application/features/weather/data/models/weather_model/weather_model.dart';
import 'package:weather_application/features/weather/domain/use_case/weather_use_case.dart';

part 'home_screen_logic.g.dart';

class HomeScreenLogic = HomeScreenLogicBase with _$HomeScreenLogic;

abstract class HomeScreenLogicBase extends LogicBase with Store {
  HomeScreenLogicBase({
    required CitySearchUseCase citySearchUseCase,
    required WeatherUseCase weatherUseCase,
    required AppState appState,
    required StorageService storageService,
  })  : _appState = appState,
        _storageService = storageService,
        _weatherUseCase = weatherUseCase;

  final WeatherUseCase _weatherUseCase;
  final StorageService _storageService;
  final AppState _appState;

  @observable
  bool isLoading = false;

  @observable
  int currentCityIndex = 0;

  @observable
  double scrollControllerOffset = 0;

  @computed
  GeoObject get currentCity => cities[currentCityIndex];

  @computed
  List<GeoObject> get cities => _appState.citiesState.cities;

  @computed
  ObservableMap<String, CurrentConditionsModel> get currentConditions =>
      _appState.weatherState.currentConditions;

  @override
  void init(BuildContext context) {
    super.init(context);
    initCities(context);
  }

  @action
  CurrentConditionsModel? _currentConditions(String cityKey) {
    return currentConditions[cityKey];
  }

  @action
  void scrollListener(double offset) {
    scrollControllerOffset = offset;
  }

  @action
  Future<void> initCities(BuildContext context) async {
    _appState.citiesState.setCities(_storageService.cities ?? []);
    if (cities.isEmpty) {
      await context.router.push(const CitySearchRoute());
      if (cities.isEmpty) {
        FlutterExitApp.exitApp(iosForceExit: true);
      }
    }
  }

  @action
  Future<void> loadCurrentWeather(BuildContext context, GeoObject city) async {
    try {
      if (_appState.weatherState.currentConditions[city.key] != null) return;
      final weather = await _weatherUseCase.getCurrentConditionsMock(city.key);
      if (weather.isEmpty) return;
      _appState.weatherState.updateCurrentConditions(city.key, weather.first);
    } on Exception catch (e) {
      if (context.mounted) {
        showSnackBar(
          context,
          message: e.formattedMessage(),
        );
      }
    }
  }

  @action
  void selectCity(BuildContext context, int index) {
    currentCityIndex = index;
    loadCurrentWeather(
      context,
      cities[currentCityIndex],
    );
  }

  @action
  void openCitiesManager(BuildContext context) {
    context.router.push(const CityManagementRoute());
  }
}
