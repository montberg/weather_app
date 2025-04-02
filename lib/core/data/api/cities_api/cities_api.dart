import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

part 'cities_api.g.dart';

@RestApi()
abstract class CitiesApi {
  factory CitiesApi(Dio dio, {String baseUrl}) = _CitiesApi;

  @GET('locations/v1/cities/autocomplete')
  Future<List<GeoObject>> getAutocompleteInfo(
    @Query('q') String quiery,
  );

  @GET('locations/v1/cities/geoposition/search')
  Future<GeoObject> getGeopositionInfo(
    @Query('q') String quiery,
  );
}
