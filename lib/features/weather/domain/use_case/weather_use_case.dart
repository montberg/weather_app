import 'dart:convert';

import 'package:weather_application/core/data/api/weather_api/mocks/weather_mocks.dart';
import 'package:weather_application/core/data/api/weather_api/weather_api.dart';
import 'package:weather_application/features/weather/data/models/daily_forecast/daily_forecast_model.dart';
import 'package:weather_application/features/weather/data/models/hourly_forecast/hourly_forecast_model.dart';
import 'package:weather_application/features/weather/data/models/weather_model/weather_model.dart';

abstract class WeatherUseCase {
  Future<List<CurrentConditionsModel>> getCurrentConditions(String city);
  Future<List<CurrentConditionsModel>> getCurrentConditionsMock(String city);

  Future<DailyForecastResponse> getWeatherDailyForecast(String city);
  Future<DailyForecastResponse> getWeatherDailyForecastMock(String city);

  Future<HourlyForecastResponse> getWeatherHourlyForecast(String cityId);
  Future<HourlyForecastResponse> getWeatherHourlyForecastMock(String cityId);
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
  Future<DailyForecastResponse> getWeatherDailyForecast(String cityId) {
    try {
      final output = _weatherApi.getDailyForecast(
        cityId: cityId,
        metric: true,
      );
      return output;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<DailyForecastResponse> getWeatherDailyForecastMock(String cityId) {
    try {
      final decodedJson = jsonDecode(mock_daily_forecast_response);
      return Future.value(DailyForecastResponse.fromJson(decodedJson));
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<HourlyForecastResponse> getWeatherHourlyForecast(String cityId) {
    try {
      final output = _weatherApi.getHourlyForecast(
        cityId: cityId,
        metric: true,
      );
      return output;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<HourlyForecastResponse> getWeatherHourlyForecastMock(String cityId) {
    try {
      final decodedJson = jsonDecode(mock_hourly_foreacast_response);
      return Future.value(HourlyForecastResponse.fromJson(decodedJson));
    } on Exception {
      rethrow;
    }
  }
}
