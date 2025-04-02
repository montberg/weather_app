import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/di/service_locator.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/features/city_search/domain/use_case/city_search_use_case.dart';
import 'package:weather_application/features/city_search/presentation/logic/city_search_logic.dart';
import 'package:weather_application/features/city_search/presentation/widgets/city_peview_chip.dart';
import 'package:weather_application/features/city_search/presentation/widgets/city_picker_tile.dart';

@RoutePage()
class CitySearchScreen extends StatelessWidget {
  const CitySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LogicProvider(
            create: (_) => CitySearchLogic(
                  appState: getIt<AppState>(),
                  citySearchUseCase: getIt<CitySearchUseCase>(),
                ),
            builder: (context, logic) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Observer(builder: (context) {
                        return Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: logic.controller,
                                onChanged: (str) =>
                                    logic.getAutocomplete(context, str),
                                decoration: InputDecoration(
                                  hintText: "Город",
                                  prefixIcon: const Icon(
                                    Icons.search,
                                  ),
                                  suffixIcon: logic.showSearchClearButton
                                      ? GestureDetector(
                                          onTap: logic.clearSearch,
                                          child: const Icon(Icons.close),
                                        )
                                      : null,
                                  contentPadding: EdgeInsets.zero,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(90.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            TextButton(
                              onPressed: () => logic.closeScreen(context),
                              child: const Text(
                                "Отмена",
                              ),
                            )
                          ],
                        );
                      }),
                      const SizedBox(height: 16),
                      Expanded(
                        child: Observer(builder: (context) {
                          if (logic.isLoading) {
                            return Center(
                              child: Text(
                                'Загрузка...',
                                style: const TextStyle().copyWith(
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                            );
                          }
                          if (logic.shownCityList == null) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Популярные города",
                                  style: const TextStyle().copyWith(
                                      color: Colors.black.withOpacity(0.5)),
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  spacing: 10,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  alignment: WrapAlignment.start,
                                  runAlignment: WrapAlignment.start,
                                  children: logic.previewCities.map((city) {
                                    return CityPeviewChip(
                                      isAdded: logic.selectedCities.any(
                                        (element) => element.key == city.key,
                                      ),
                                      city: city,
                                      onTap: () =>
                                          logic.onCityTap(context, city),
                                    );
                                  }).toList(),
                                ),
                              ],
                            );
                          }
                          return logic.shownCityList?.isEmpty ?? true
                              ? Center(
                                  child: Text(
                                    "Пусто",
                                    style: const TextStyle().copyWith(
                                        color: Colors.black.withOpacity(0.5)),
                                  ),
                                )
                              : ListView.separated(
                                  itemCount: logic.shownCityList?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    return Observer(builder: (context) {
                                      return CityPickerTile(
                                        isAdded: logic.selectedCities.any((e) {
                                          return e.key ==
                                              logic.shownCityList![index].key;
                                        }),
                                        onAddTap: () {
                                          logic.addCity(
                                            logic.shownCityList![index],
                                          );
                                        },
                                        onTileTap: () {
                                          logic.onCityTap(
                                            context,
                                            logic.shownCityList![index],
                                          );
                                        },
                                        geoObject: logic.shownCityList![index],
                                      );
                                    });
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(height: 10);
                                  },
                                );
                        }),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
