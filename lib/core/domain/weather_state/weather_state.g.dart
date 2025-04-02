// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WeatherState on WeatherStateBase, Store {
  Computed<ObservableMap<String, CurrentConditionsModel>>?
      _$currentConditionsComputed;

  @override
  ObservableMap<String, CurrentConditionsModel> get currentConditions =>
      (_$currentConditionsComputed ??=
              Computed<ObservableMap<String, CurrentConditionsModel>>(
                  () => super.currentConditions,
                  name: 'WeatherStateBase.currentConditions'))
          .value;

  late final _$_currentConditionsAtom =
      Atom(name: 'WeatherStateBase._currentConditions', context: context);

  @override
  ObservableMap<String, CurrentConditionsModel> get _currentConditions {
    _$_currentConditionsAtom.reportRead();
    return super._currentConditions;
  }

  @override
  set _currentConditions(ObservableMap<String, CurrentConditionsModel> value) {
    _$_currentConditionsAtom.reportWrite(value, super._currentConditions, () {
      super._currentConditions = value;
    });
  }

  late final _$WeatherStateBaseActionController =
      ActionController(name: 'WeatherStateBase', context: context);

  @override
  void updateCurrentConditions(
      String cityKey, CurrentConditionsModel conditions) {
    final _$actionInfo = _$WeatherStateBaseActionController.startAction(
        name: 'WeatherStateBase.updateCurrentConditions');
    try {
      return super.updateCurrentConditions(cityKey, conditions);
    } finally {
      _$WeatherStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearState() {
    final _$actionInfo = _$WeatherStateBaseActionController.startAction(
        name: 'WeatherStateBase.clearState');
    try {
      return super.clearState();
    } finally {
      _$WeatherStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentConditions: ${currentConditions}
    ''';
  }
}
