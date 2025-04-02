import 'package:weather_application/core/domain/cities_state/cities_state.dart';
import 'package:weather_application/core/domain/weather_state/weather_state.dart';

export 'package:weather_application/core/domain/cities_state/cities_state.dart';

class AppState {
  AppState();

  late CitiesState _citiesState;
  late WeatherState _weatherState;
  //late SettingsState _settingsState;

  Future<void> initState(
      //String locale,
      //ThemeMode themeMode,
      ) async {
    _citiesState = CitiesState();
    _weatherState = WeatherState();
    //_settingsState = SettingsState(
    //  themeMode: themeMode,
    //  locale: Locale(locale),
    //);
  }

  void clearState() {
    _weatherState.clearState();
    _citiesState.clearState();
  }

  void onLanguageChanged() {
    _weatherState.clearState();
    _citiesState.clearState();
  }

  CitiesState get citiesState => _citiesState;
  WeatherState get weatherState => _weatherState;
  //SettingsState get settingsState => _settingsState;
}
