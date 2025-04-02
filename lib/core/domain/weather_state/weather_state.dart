import 'package:mobx/mobx.dart';
import 'package:weather_application/features/weather/data/models/weather_model/weather_model.dart';

part 'weather_state.g.dart';

class WeatherState = WeatherStateBase with _$WeatherState;

abstract class WeatherStateBase with Store {
  @observable
  ObservableMap<String, CurrentConditionsModel> _currentConditions =
      ObservableMap.of({});

  @computed
  ObservableMap<String, CurrentConditionsModel> get currentConditions =>
      _currentConditions;

  @action
  void updateCurrentConditions(
    String cityKey,
    CurrentConditionsModel conditions,
  ) {
    _currentConditions[cityKey] = conditions;
  }

  @action
  void clearState() {
    _currentConditions = ObservableMap.of({});
  }
}
