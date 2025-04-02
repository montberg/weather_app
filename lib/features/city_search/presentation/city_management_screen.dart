import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/di/service_locator.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/features/city_search/domain/use_case/city_search_use_case.dart';
import 'package:weather_application/features/city_search/presentation/logic/city_search_logic.dart';

@RoutePage()
class CityManagementScreen extends StatelessWidget {
  const CityManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: LogicProvider(
            create: (_) => CitySearchLogic(
                  appState: getIt<AppState>(),
                  citySearchUseCase: getIt<CitySearchUseCase>(),
                ),
            builder: (context, logic) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Управление городами",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      onTap: () => logic.openCitySearch(context),
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Введите местоположение",
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Observer(builder: (context) {
                        return ListView.builder(
                          itemCount: logic.selectedCities.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            logic.selectedCities[index]
                                                .localizedName,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  color: Colors.white,
                                                ),
                                          ),
                                          Text(
                                            "Облачно 15C / 5C",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Text(
                                        '10C',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
