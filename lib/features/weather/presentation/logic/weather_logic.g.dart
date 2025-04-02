// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_logic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WeatherLogic on _WeatherLogic, Store {
  Computed<String>? _$cityNameComputed;

  @override
  String get cityName =>
      (_$cityNameComputed ??= Computed<String>(() => super.cityName,
              name: '_WeatherLogic.cityName'))
          .value;
  Computed<bool>? _$isCityAddedComputed;

  @override
  bool get isCityAdded =>
      (_$isCityAddedComputed ??= Computed<bool>(() => super.isCityAdded,
              name: '_WeatherLogic.isCityAdded'))
          .value;
  Computed<List<DailyForecast>>? _$dailyForecastsComputed;

  @override
  List<DailyForecast> get dailyForecasts => (_$dailyForecastsComputed ??=
          Computed<List<DailyForecast>>(() => super.dailyForecasts,
              name: '_WeatherLogic.dailyForecasts'))
      .value;

  late final _$_currentCityAtom =
      Atom(name: '_WeatherLogic._currentCity', context: context);

  @override
  GeoObject? get _currentCity {
    _$_currentCityAtom.reportRead();
    return super._currentCity;
  }

  @override
  set _currentCity(GeoObject? value) {
    _$_currentCityAtom.reportWrite(value, super._currentCity, () {
      super._currentCity = value;
    });
  }

  late final _$temperatureAtom =
      Atom(name: '_WeatherLogic.temperature', context: context);

  @override
  double? get temperature {
    _$temperatureAtom.reportRead();
    return super.temperature;
  }

  @override
  set temperature(double? value) {
    _$temperatureAtom.reportWrite(value, super.temperature, () {
      super.temperature = value;
    });
  }

  late final _$_currentForecastAtom =
      Atom(name: '_WeatherLogic._currentForecast', context: context);

  @override
  ForecastResponse? get _currentForecast {
    _$_currentForecastAtom.reportRead();
    return super._currentForecast;
  }

  @override
  set _currentForecast(ForecastResponse? value) {
    _$_currentForecastAtom.reportWrite(value, super._currentForecast, () {
      super._currentForecast = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_WeatherLogic.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fetchWeatherAsyncAction =
      AsyncAction('_WeatherLogic.fetchWeather', context: context);

  @override
  Future<void> fetchWeather() {
    return _$fetchWeatherAsyncAction.run(() => super.fetchWeather());
  }

  late final _$fetchForecastAsyncAction =
      AsyncAction('_WeatherLogic.fetchForecast', context: context);

  @override
  Future<void> fetchForecast() {
    return _$fetchForecastAsyncAction.run(() => super.fetchForecast());
  }

  late final _$_WeatherLogicActionController =
      ActionController(name: '_WeatherLogic', context: context);

  @override
  void addCity() {
    final _$actionInfo = _$_WeatherLogicActionController.startAction(
        name: '_WeatherLogic.addCity');
    try {
      return super.addCity();
    } finally {
      _$_WeatherLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCity() {
    final _$actionInfo = _$_WeatherLogicActionController.startAction(
        name: '_WeatherLogic.removeCity');
    try {
      return super.removeCity();
    } finally {
      _$_WeatherLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
temperature: ${temperature},
isLoading: ${isLoading},
cityName: ${cityName},
isCityAdded: ${isCityAdded},
dailyForecasts: ${dailyForecasts}
    ''';
  }
}
