import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/data/storage_service.dart';
import 'package:weather_application/core/di/service_locator.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/features/city_search/domain/use_case/city_search_use_case.dart';
import 'package:weather_application/features/home/presentation/logic/home_screen_logic.dart';
import 'package:weather_application/features/home/presentation/widgets/humidity_widget.dart';
import 'package:weather_application/features/home/presentation/widgets/ultraviolet_widget.dart';
import 'package:weather_application/features/weather/data/models/weather_model/weather_model.dart';
import 'package:weather_application/features/weather/domain/use_case/weather_use_case.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LogicProvider(
      create: (_) => HomeScreenLogic(
        weatherUseCase: getIt<WeatherUseCase>(),
        citySearchUseCase: getIt<CitySearchUseCase>(),
        appState: getIt<AppState>(),
        storageService: getIt<StorageService>(),
      ),
      builder: (context, logic) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 139, 194),
          appBar: AppBar(
            title: Observer(builder: (context) {
              return Opacity(
                opacity:
                    ((logic.scrollControllerOffset - 350) / 50).clamp(0, 1),
                child: Text(
                  logic.currentCity.localizedName,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              );
            }),
            forceMaterialTransparency: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.add, color: Colors.white),
                onPressed: () => logic.openCitiesManager(context),
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Observer(builder: (context) {
                  final conditions =
                      logic.currentConditions[logic.currentCity.key];
                  return Column(
                    children: [
                      Opacity(
                        opacity: 1 -
                            (logic.scrollControllerOffset / 250).clamp(0, 1),
                        child: Transform.scale(
                          scale: 1 -
                              (logic.scrollControllerOffset / 5000).clamp(0, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                logic.currentCity.localizedName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                              ),
                              Text(
                                conditions?.temperature?.metric.value
                                        .toString() ??
                                    '',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              Observer(builder: (context) {
                return PageView.builder(
                  itemCount: logic.cities.length,
                  onPageChanged: (index) => logic.selectCity(context, index),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CurrentConditionsWidget(
                        currentConditions:
                            logic.currentConditions[logic.currentCity.key],
                        initialOffset: logic.scrollControllerOffset,
                        offsetListener: (offset) =>
                            logic.scrollListener(offset),
                      ),
                    );
                  },
                );
              }),
            ],
          ),
        );
      },
    );
  }
}

class CurrentConditionsWidget extends StatefulWidget {
  const CurrentConditionsWidget({
    super.key,
    required this.initialOffset,
    required this.offsetListener,
    this.currentConditions,
  });

  final double initialOffset;
  final void Function(double) offsetListener;
  final CurrentConditionsModel? currentConditions;

  @override
  State<CurrentConditionsWidget> createState() =>
      _CurrentConditionsWidgetState();
}

class _CurrentConditionsWidgetState extends State<CurrentConditionsWidget> {
  late final ScrollController controller;

  @override
  void initState() {
    controller = ScrollController(initialScrollOffset: widget.initialOffset)
      ..addListener(
        () => widget.offsetListener(controller.offset),
      );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: [
        const SizedBox(
          height: 500,
        ),
        SizedBox(
          child: WeatherWidgetCard(
            child: Text('123'),
          ),
          height: 250,
        ),
        SizedBox(height: 5),
        SizedBox(
          child: WeatherWidgetCard(),
          height: 200,
        ),
        SizedBox(height: 5),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            WeatherWidgetCard(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: widget.currentConditions == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('УФ'),
                              Text(
                                widget.currentConditions!.uvIndexText ?? '',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 40,
                            right: 40,
                            child: CustomPaint(
                              painter: UltravioletWidgetPainter(
                                value: widget.currentConditions!.uvIndex!,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            WeatherWidgetCard(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: widget.currentConditions == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Влажность'),
                              Text(
                                widget.currentConditions!.relativeHumidity
                                        .toString() +
                                    "%",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                          Positioned(
                            right: 40,
                            bottom: 40,
                            child: CustomPaint(
                              painter: HumidityWidgetPainter(
                                value: 90,
                              ),
                            ),
                          )
                        ],
                      ),
              ),
            ),
            WeatherWidgetCard(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: widget.currentConditions == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ощущается'),
                          Text(widget.currentConditions!.realFeelTemperature!
                              .metric.value
                              .toString()),
                        ],
                      ),
              ),
            ),
            WeatherWidgetCard(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: widget.currentConditions == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget
                              .currentConditions!.wind!.direction.localized),
                          Text(
                            widget.currentConditions!.wind!.speed.metric.value
                                .toString(),
                          ),
                        ],
                      ),
              ),
            ),
            WeatherWidgetCard(),
            WeatherWidgetCard(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: widget.currentConditions == null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Давление'),
                          Text(widget.currentConditions!.pressure!.metric.value
                              .toString()),
                        ],
                      ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        SizedBox(
          child: WeatherWidgetCard(),
          height: 60,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

class WeatherWidgetCard extends StatelessWidget {
  const WeatherWidgetCard({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
