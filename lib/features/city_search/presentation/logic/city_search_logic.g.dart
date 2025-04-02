// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_search_logic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CitySearchLogic on CitySearchLogicBase, Store {
  Computed<ObservableList<GeoObject>>? _$selectedCitiesComputed;

  @override
  ObservableList<GeoObject> get selectedCities => (_$selectedCitiesComputed ??=
          Computed<ObservableList<GeoObject>>(() => super.selectedCities,
              name: 'CitySearchLogicBase.selectedCities'))
      .value;

  late final _$shownCityListAtom =
      Atom(name: 'CitySearchLogicBase.shownCityList', context: context);

  @override
  List<GeoObject>? get shownCityList {
    _$shownCityListAtom.reportRead();
    return super.shownCityList;
  }

  @override
  set shownCityList(List<GeoObject>? value) {
    _$shownCityListAtom.reportWrite(value, super.shownCityList, () {
      super.shownCityList = value;
    });
  }

  late final _$previewCitiesAtom =
      Atom(name: 'CitySearchLogicBase.previewCities', context: context);

  @override
  List<GeoObject> get previewCities {
    _$previewCitiesAtom.reportRead();
    return super.previewCities;
  }

  @override
  set previewCities(List<GeoObject> value) {
    _$previewCitiesAtom.reportWrite(value, super.previewCities, () {
      super.previewCities = value;
    });
  }

  late final _$showSearchClearButtonAtom =
      Atom(name: 'CitySearchLogicBase.showSearchClearButton', context: context);

  @override
  bool get showSearchClearButton {
    _$showSearchClearButtonAtom.reportRead();
    return super.showSearchClearButton;
  }

  @override
  set showSearchClearButton(bool value) {
    _$showSearchClearButtonAtom.reportWrite(value, super.showSearchClearButton,
        () {
      super.showSearchClearButton = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'CitySearchLogicBase.isLoading', context: context);

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

  late final _$_getPreviewCitiesAsyncAction =
      AsyncAction('CitySearchLogicBase._getPreviewCities', context: context);

  @override
  Future<void> _getPreviewCities(BuildContext context) {
    return _$_getPreviewCitiesAsyncAction
        .run(() => super._getPreviewCities(context));
  }

  late final _$getAutocompleteAsyncAction =
      AsyncAction('CitySearchLogicBase.getAutocomplete', context: context);

  @override
  Future<void> getAutocomplete(BuildContext context, String quiery) {
    return _$getAutocompleteAsyncAction
        .run(() => super.getAutocomplete(context, quiery));
  }

  late final _$CitySearchLogicBaseActionController =
      ActionController(name: 'CitySearchLogicBase', context: context);

  @override
  void clearSearch() {
    final _$actionInfo = _$CitySearchLogicBaseActionController.startAction(
        name: 'CitySearchLogicBase.clearSearch');
    try {
      return super.clearSearch();
    } finally {
      _$CitySearchLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addCity(GeoObject city) {
    final _$actionInfo = _$CitySearchLogicBaseActionController.startAction(
        name: 'CitySearchLogicBase.addCity');
    try {
      return super.addCity(city);
    } finally {
      _$CitySearchLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onCityTap(BuildContext context, GeoObject city) {
    final _$actionInfo = _$CitySearchLogicBaseActionController.startAction(
        name: 'CitySearchLogicBase.onCityTap');
    try {
      return super.onCityTap(context, city);
    } finally {
      _$CitySearchLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void openCitySearch(BuildContext context) {
    final _$actionInfo = _$CitySearchLogicBaseActionController.startAction(
        name: 'CitySearchLogicBase.openCitySearch');
    try {
      return super.openCitySearch(context);
    } finally {
      _$CitySearchLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closeScreen(BuildContext context) {
    final _$actionInfo = _$CitySearchLogicBaseActionController.startAction(
        name: 'CitySearchLogicBase.closeScreen');
    try {
      return super.closeScreen(context);
    } finally {
      _$CitySearchLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
shownCityList: ${shownCityList},
previewCities: ${previewCities},
showSearchClearButton: ${showSearchClearButton},
isLoading: ${isLoading},
selectedCities: ${selectedCities}
    ''';
  }
}
