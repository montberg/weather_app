// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_logic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenLogic on HomeScreenLogicBase, Store {
  Computed<GeoObject>? _$currentCityComputed;

  @override
  GeoObject get currentCity =>
      (_$currentCityComputed ??= Computed<GeoObject>(() => super.currentCity,
              name: 'HomeScreenLogicBase.currentCity'))
          .value;
  Computed<List<GeoObject>>? _$citiesComputed;

  @override
  List<GeoObject> get cities =>
      (_$citiesComputed ??= Computed<List<GeoObject>>(() => super.cities,
              name: 'HomeScreenLogicBase.cities'))
          .value;
  Computed<ObservableMap<String, CurrentConditionsModel>>?
      _$currentConditionsComputed;

  @override
  ObservableMap<String, CurrentConditionsModel> get currentConditions =>
      (_$currentConditionsComputed ??=
              Computed<ObservableMap<String, CurrentConditionsModel>>(
                  () => super.currentConditions,
                  name: 'HomeScreenLogicBase.currentConditions'))
          .value;

  late final _$isLoadingAtom =
      Atom(name: 'HomeScreenLogicBase.isLoading', context: context);

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

  late final _$currentCityIndexAtom =
      Atom(name: 'HomeScreenLogicBase.currentCityIndex', context: context);

  @override
  int get currentCityIndex {
    _$currentCityIndexAtom.reportRead();
    return super.currentCityIndex;
  }

  @override
  set currentCityIndex(int value) {
    _$currentCityIndexAtom.reportWrite(value, super.currentCityIndex, () {
      super.currentCityIndex = value;
    });
  }

  late final _$scrollControllerOffsetAtom = Atom(
      name: 'HomeScreenLogicBase.scrollControllerOffset', context: context);

  @override
  double get scrollControllerOffset {
    _$scrollControllerOffsetAtom.reportRead();
    return super.scrollControllerOffset;
  }

  @override
  set scrollControllerOffset(double value) {
    _$scrollControllerOffsetAtom
        .reportWrite(value, super.scrollControllerOffset, () {
      super.scrollControllerOffset = value;
    });
  }

  late final _$initCitiesAsyncAction =
      AsyncAction('HomeScreenLogicBase.initCities', context: context);

  @override
  Future<void> initCities(BuildContext context) {
    return _$initCitiesAsyncAction.run(() => super.initCities(context));
  }

  late final _$loadCurrentWeatherAsyncAction =
      AsyncAction('HomeScreenLogicBase.loadCurrentWeather', context: context);

  @override
  Future<void> loadCurrentWeather(BuildContext context, GeoObject city) {
    return _$loadCurrentWeatherAsyncAction
        .run(() => super.loadCurrentWeather(context, city));
  }

  late final _$HomeScreenLogicBaseActionController =
      ActionController(name: 'HomeScreenLogicBase', context: context);

  @override
  CurrentConditionsModel? _currentConditions(String cityKey) {
    final _$actionInfo = _$HomeScreenLogicBaseActionController.startAction(
        name: 'HomeScreenLogicBase._currentConditions');
    try {
      return super._currentConditions(cityKey);
    } finally {
      _$HomeScreenLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void scrollListener(double offset) {
    final _$actionInfo = _$HomeScreenLogicBaseActionController.startAction(
        name: 'HomeScreenLogicBase.scrollListener');
    try {
      return super.scrollListener(offset);
    } finally {
      _$HomeScreenLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCity(BuildContext context, int index) {
    final _$actionInfo = _$HomeScreenLogicBaseActionController.startAction(
        name: 'HomeScreenLogicBase.selectCity');
    try {
      return super.selectCity(context, index);
    } finally {
      _$HomeScreenLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void openCitiesManager(BuildContext context) {
    final _$actionInfo = _$HomeScreenLogicBaseActionController.startAction(
        name: 'HomeScreenLogicBase.openCitiesManager');
    try {
      return super.openCitiesManager(context);
    } finally {
      _$HomeScreenLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
currentCityIndex: ${currentCityIndex},
scrollControllerOffset: ${scrollControllerOffset},
currentCity: ${currentCity},
cities: ${cities},
currentConditions: ${currentConditions}
    ''';
  }
}
