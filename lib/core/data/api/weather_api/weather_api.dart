import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_application/features/weather/data/models/forecast/forecast_model.dart';
import 'package:weather_application/features/weather/data/models/weather_model/weather_model.dart';

part 'weather_api.g.dart';

@RestApi()
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET('/currentconditions/v1/{city_id}')
  Future<List<CurrentConditionsModel>> getCurrentConditions({
    @Path("city_id") required String cityId,
    @Query('details') bool details = true,
  });

  @GET('/forecasts/v1/daily/5day/{city_id}')
  Future<ForecastResponse> getForecast({
    @Path("city_id") required String cityId,
    @Query('metric') required bool metric,
  });
}
