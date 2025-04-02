import 'dart:convert';

import 'package:weather_application/core/data/api/weather_api/mocks/weather_mocks.dart';
import 'package:weather_application/core/data/api/weather_api/weather_api.dart';
import 'package:weather_application/features/weather/data/models/forecast/forecast_model.dart';
import 'package:weather_application/features/weather/data/models/weather_model/weather_model.dart';

abstract class WeatherUseCase {
  Future<List<CurrentConditionsModel>> getCurrentConditions(String city);
  Future<List<CurrentConditionsModel>> getCurrentConditionsMock(String city);

  Future<ForecastResponse> getWeatherForecast(String city);
  Future<ForecastResponse> getWeatherForecastMock(String city);
}

class WeatherUseCaseImpl implements WeatherUseCase {
  final WeatherApi _weatherApi;

  WeatherUseCaseImpl({
    required WeatherApi weatherApi,
  }) : _weatherApi = weatherApi;

  @override
  Future<List<CurrentConditionsModel>> getCurrentConditions(String cityId) {
    try {
      final output = _weatherApi.getCurrentConditions(cityId: cityId);
      return output;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<List<CurrentConditionsModel>> getCurrentConditionsMock(String cityId) {
    try {
      final decodedJson =
          jsonDecode(mock_currentconditions_response) as List<dynamic>;
      final outputList =
          decodedJson.map((e) => CurrentConditionsModel.fromJson(e)).toList();
      return Future.value(outputList);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<ForecastResponse> getWeatherForecast(String cityId) {
    try {
      final output = _weatherApi.getForecast(
        cityId: cityId,
        metric: true,
      );
      return output;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<ForecastResponse> getWeatherForecastMock(String cityId) {
    try {
      final decodedJson = jsonDecode(mock_forecast_response);
      return Future.value(ForecastResponse.fromJson(decodedJson));
    } on Exception {
      rethrow;
    }
  }
}
