import 'dart:convert';

import 'package:weather_application/core/data/api/cities_api/cities_api.dart';
import 'package:weather_application/core/data/api/cities_api/mocks/mock_autocomplete_response.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

abstract class CitySearchUseCase {
  Future<List<GeoObject>> getAutocompleteData(String quiery);

  Future<List<GeoObject>> getAutocompleteDataMock(String quiery);

  Future<List<GeoObject>> getPreviewCities();
}

class CitySearchUseCaseImpl implements CitySearchUseCase {
  final CitiesApi _citiesApi;

  CitySearchUseCaseImpl({
    required CitiesApi citiesApi,
  }) : _citiesApi = citiesApi;

  @override
  Future<List<GeoObject>> getAutocompleteData(String quiery) async {
    try {
      final output = await _citiesApi.getAutocompleteInfo(quiery);
      return output;
    } on Exception {
      rethrow;
    }
  }

  ///Get mock cities list by count
  List<GeoObject> _mockCitiesList({int? count}) {
    final decodedJson = jsonDecode(mock_autocomplete_response) as List<dynamic>;
    final outputList = decodedJson
        .map((e) => GeoObject.fromJson(e))
        .where((element) => element.isCity)
        .toList();

    if (count != null) {
      return outputList.sublist(0, (count + 1));
    }
    return outputList;
  }

  @override
  Future<List<GeoObject>> getPreviewCities() async {
    try {
      return _mockCitiesList(count: 20);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<List<GeoObject>> getAutocompleteDataMock(String quiery) {
    try {
      final input = quiery.toLowerCase().trim();
      return Future.value(_mockCitiesList()
          .where((element) =>
              element.isCity &&
              element.localizedName.toLowerCase().contains(input))
          .toList());
    } on Exception {
      rethrow;
    }
  }
}
