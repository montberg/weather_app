// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';
import 'package:weather_application/core/data/storage_service.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/features/weather/data/models/daily_forecast/daily_forecast_model.dart';
import 'package:weather_application/features/weather/domain/use_case/weather_use_case.dart';

part 'weather_logic.g.dart';

class WeatherLogic = _WeatherLogic with _$WeatherLogic;

abstract class _WeatherLogic extends LogicBase with Store {
  _WeatherLogic({
    required appState,
    required city,
    required weatherUseCase,
    required storageService,
  })  : _weatherUseCase = weatherUseCase,
        _appState = appState,
        _storageService = storageService,
        _city = city;

  final AppState _appState;

  final GeoObject _city;

  final WeatherUseCase _weatherUseCase;

  final StorageService _storageService;

  @observable
  GeoObject? _currentCity;

  @observable
  double? temperature;

  @observable
  DailyForecastResponse? _currentForecast;

  @observable
  bool isLoading = false;

  @computed
  String get cityName => _currentCity?.localizedName ?? '';

  @computed
  bool get isCityAdded => _appState.citiesState.cities
      .any((element) => element.key == _currentCity?.key);

  @computed
  List<DailyForecast> get dailyForecasts =>
      _currentForecast?.dailyForecasts ?? [];

  @override
  void init(BuildContext context) {
    _currentCity = _city;
    fetchWeather();
    fetchForecast();
    super.init(context);
  }

  @action
  Future<void> fetchWeather() async {
    isLoading = true;
    try {
      if (_currentCity == null) return;
      final weather =
          await _weatherUseCase.getCurrentConditionsMock(_currentCity!.key);
      temperature = weather.firstOrNull?.temperature?.metric.value ?? 0.0;
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> fetchForecast() async {
    isLoading = true;
    try {
      if (_currentCity == null) return;
      final forecast =
          await _weatherUseCase.getWeatherDailyForecastMock(_currentCity!.key);
      _currentForecast = forecast;
    } finally {
      isLoading = false;
    }
  }

  @action
  void addCity() {
    if (_currentCity == null) return;
    _appState.citiesState.addCity(_currentCity!);
    _storageService.addCity(_currentCity!);
  }

  @action
  void removeCity() {
    if (_currentCity == null) return;
    _appState.citiesState.removeCity(_currentCity!);
    _storageService.removeCity(_currentCity!);
  }
}
