// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsState on SettingsStateBase, Store {
  Computed<ObservableList<GeoObject>>? _$citiesComputed;

  @override
  ObservableList<GeoObject> get cities => (_$citiesComputed ??=
          Computed<ObservableList<GeoObject>>(() => super.cities,
              name: 'SettingsStateBase.cities'))
      .value;

  late final _$_citiesAtom =
      Atom(name: 'SettingsStateBase._cities', context: context);

  @override
  ObservableList<GeoObject> get _cities {
    _$_citiesAtom.reportRead();
    return super._cities;
  }

  @override
  set _cities(ObservableList<GeoObject> value) {
    _$_citiesAtom.reportWrite(value, super._cities, () {
      super._cities = value;
    });
  }

  late final _$SettingsStateBaseActionController =
      ActionController(name: 'SettingsStateBase', context: context);

  @override
  void addCity(GeoObject city) {
    final _$actionInfo = _$SettingsStateBaseActionController.startAction(
        name: 'SettingsStateBase.addCity');
    try {
      return super.addCity(city);
    } finally {
      _$SettingsStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCity(GeoObject city) {
    final _$actionInfo = _$SettingsStateBaseActionController.startAction(
        name: 'SettingsStateBase.removeCity');
    try {
      return super.removeCity(city);
    } finally {
      _$SettingsStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearState() {
    final _$actionInfo = _$SettingsStateBaseActionController.startAction(
        name: 'SettingsStateBase.clearState');
    try {
      return super.clearState();
    } finally {
      _$SettingsStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cities: ${cities}
    ''';
  }
}
