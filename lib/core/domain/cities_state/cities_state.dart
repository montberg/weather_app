import 'package:mobx/mobx.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';

part 'cities_state.g.dart';

class CitiesState = CitiesStateBase with _$CitiesState;

abstract class CitiesStateBase with Store {
  @observable
  ObservableList<GeoObject> _cities = ObservableList.of([]);

  @computed
  ObservableList<GeoObject> get cities => _cities;

  @action
  void setCities(List<GeoObject> cities) {
    _cities = ObservableList.of(cities);
  }

  @action
  void addCity(GeoObject city) {
    if (_cities.any((element) => element.key == city.key)) return;
    _cities.add(city);
  }

  @action
  void removeCity(GeoObject city) {
    _cities.removeWhere((element) => element.key == city.key);
  }

  @action
  void clearState() {
    _cities = ObservableList.of([]);
  }
}
