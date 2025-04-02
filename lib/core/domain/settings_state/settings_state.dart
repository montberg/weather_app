import 'package:mobx/mobx.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

part 'settings_state.g.dart';

class SettingsState = SettingsStateBase with _$SettingsState;

abstract class SettingsStateBase with Store {
  @observable
  ObservableList<GeoObject> _cities = ObservableList.of([]);

  @computed
  ObservableList<GeoObject> get cities => _cities;

  @action
  void addCity(GeoObject city) {
    _cities.add(city);
  }

  @action
  void removeCity(GeoObject city) {
    _cities.add(city);
  }

  @action
  void clearState() {
    _cities = ObservableList.of([]);
  }
}
