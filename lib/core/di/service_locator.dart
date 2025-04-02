import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_application/core/data/api/cities_api/cities_api.dart';
import 'package:weather_application/core/data/api/weather_api/weather_api.dart';
import 'package:weather_application/core/data/storage_service.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/core/network/dio_client.dart';
import 'package:weather_application/features/city_search/domain/use_case/city_search_use_case.dart';
import 'package:weather_application/features/weather/domain/use_case/weather_use_case.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    final preferences = await SharedPreferences.getInstance();

    getIt.registerLazySingleton<StorageService>(
      () => StorageServiceImpl(
        preferences: preferences,
      ),
    );

    getIt.registerLazySingleton<AppState>(
      () => AppState()
        ..initState(
            //locale.languageCode,
            // service.themeMode,
            //service.paymentMethod ?? PaymentMethod.cash(),
            ),
    );

    //Dio init
    getIt.registerLazySingleton<Dio>(
      () => DioClient.createDio(),
    );

    //Apis init
    getIt.registerLazySingleton<WeatherApi>(
      () => WeatherApi(
        getIt<Dio>(),
      ),
    );
    getIt.registerLazySingleton<CitiesApi>(
      () => CitiesApi(
        getIt<Dio>(),
      ),
    );

    //UseCases init
    getIt.registerLazySingleton<WeatherUseCase>(
      () => WeatherUseCaseImpl(
        weatherApi: getIt<WeatherApi>(),
      ),
    );
    getIt.registerLazySingleton<CitySearchUseCase>(
      () => CitySearchUseCaseImpl(
        citiesApi: getIt<CitiesApi>(),
      ),
    );
  }
}
