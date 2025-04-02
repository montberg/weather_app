// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CitiesState on CitiesStateBase, Store {
  Computed<ObservableList<GeoObject>>? _$citiesComputed;

  @override
  ObservableList<GeoObject> get cities => (_$citiesComputed ??=
          Computed<ObservableList<GeoObject>>(() => super.cities,
              name: 'CitiesStateBase.cities'))
      .value;

  late final _$_citiesAtom =
      Atom(name: 'CitiesStateBase._cities', context: context);

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

  late final _$CitiesStateBaseActionController =
      ActionController(name: 'CitiesStateBase', context: context);

  @override
  void setCities(List<GeoObject> cities) {
    final _$actionInfo = _$CitiesStateBaseActionController.startAction(
        name: 'CitiesStateBase.setCities');
    try {
      return super.setCities(cities);
    } finally {
      _$CitiesStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addCity(GeoObject city) {
    final _$actionInfo = _$CitiesStateBaseActionController.startAction(
        name: 'CitiesStateBase.addCity');
    try {
      return super.addCity(city);
    } finally {
      _$CitiesStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCity(GeoObject city) {
    final _$actionInfo = _$CitiesStateBaseActionController.startAction(
        name: 'CitiesStateBase.removeCity');
    try {
      return super.removeCity(city);
    } finally {
      _$CitiesStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearState() {
    final _$actionInfo = _$CitiesStateBaseActionController.startAction(
        name: 'CitiesStateBase.clearState');
    try {
      return super.clearState();
    } finally {
      _$CitiesStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cities: ${cities}
    ''';
  }
}
