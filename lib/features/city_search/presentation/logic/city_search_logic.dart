// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/core/extensions/exception_extension.dart';
import 'package:weather_application/core/navigation/app_router.dart';
import 'package:weather_application/features/city_search/domain/use_case/city_search_use_case.dart';

part 'city_search_logic.g.dart';

class CitySearchLogic = CitySearchLogicBase with _$CitySearchLogic;

abstract class CitySearchLogicBase extends LogicBase with Store {
  final CitySearchUseCase _citySearchUseCase;
  final AppState _appState;

  CitySearchLogicBase({
    required citySearchUseCase,
    required appState,
  })  : _appState = appState,
        _citySearchUseCase = citySearchUseCase;

  final TextEditingController controller = TextEditingController();

  final Debouncer _debouncer = Debouncer();

  final _debounceDuration = const Duration(milliseconds: 500);

  @observable
  List<GeoObject>? shownCityList;

  @observable
  List<GeoObject> previewCities = [];

  @observable
  bool showSearchClearButton = false;

  @observable
  bool isLoading = false;

  @computed
  ObservableList<GeoObject> get selectedCities => _appState.citiesState.cities;

  @override
  void init(BuildContext context) {
    super.init(context);
    _getPreviewCities(context);
  }

  @action
  void clearSearch() {
    showSearchClearButton = false;
    controller.clear();
    shownCityList = null;
  }

  @action
  void addCity(GeoObject city) {
    _appState.citiesState.addCity(city);
  }

  @action
  void onCityTap(BuildContext context, GeoObject city) {
    context.router.push(WeatherRoute(city: city));
  }

  @action
  Future<void> _getPreviewCities(BuildContext context) async {
    try {
      previewCities = await _citySearchUseCase.getPreviewCities();
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
  Future<void> getAutocomplete(BuildContext context, String quiery) async {
    if (controller.text.isEmpty) {
      showSearchClearButton = false;
      isLoading = false;
      _debouncer.cancel();
      shownCityList = null;
      return;
    }
    showSearchClearButton = true;
    isLoading = true;
    _debouncer.debounce(
      duration: _debounceDuration,
      onDebounce: () async {
        try {
          final cityList = await _citySearchUseCase.getAutocompleteDataMock(
            quiery,
          );
          shownCityList = cityList.where((element) => element.isCity).toList();
          isLoading = false;
        } on Exception catch (e) {
          if (context.mounted) {
            showSnackBar(
              context,
              message: e.formattedMessage(),
            );
          }
        }
      },
    );
  }

  @action
  void openCitySearch(BuildContext context) {
    context.router.push(const CitySearchRoute());
  }

  @action
  void closeScreen(BuildContext context) {
    context.router.maybePop();
  }

  @override
  void dispose(BuildContext context) {
    super.dispose(context);
    controller.dispose();
  }
}
