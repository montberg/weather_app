import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_application/core/base_logic/base_logic.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';
import 'package:weather_application/core/data/storage_service.dart';
import 'package:weather_application/core/di/service_locator.dart';
import 'package:weather_application/core/domain/app_state/app_state.dart';
import 'package:weather_application/features/weather/data/models/daily_forecast/daily_forecast_model.dart';
import 'package:weather_application/features/weather/domain/use_case/weather_use_case.dart';
import 'package:weather_application/features/weather/presentation/logic/weather_logic.dart';
import 'package:weather_application/features/weather/presentation/widgets/forecast_column_widget.dart';
import 'package:weather_application/features/weather/presentation/widgets/forecast_temp_graph_painter.dart';
import 'package:weather_application/features/weather/presentation/widgets/remove_scroll_effects_behaviour.dart';

@RoutePage()
class WeatherScreen extends StatefulWidget {
  const WeatherScreen({
    super.key,
    required this.city,
  });

  final GeoObject city;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LogicProvider(
          create: (_) => WeatherLogic(
                city: widget.city,
                appState: getIt<AppState>(),
                storageService: getIt<StorageService>(),
                weatherUseCase: getIt<WeatherUseCase>(),
              ),
          builder: (context, logic) {
            return Observer(
              builder: (_) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        logic.cityName,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      (logic.isLoading || logic.dailyForecasts.isEmpty)
                          ? SizedBox(
                              height: 500,
                              child: Center(
                                child: Text(
                                  'Загрузка...',
                                  style: const TextStyle().copyWith(
                                      color: Colors.black.withOpacity(0.5)),
                                ),
                              ),
                            )
                          : ForecastWidget(
                              dailyForecasts: logic.dailyForecasts,
                            ),
                      const SizedBox(height: 20),
                      Observer(builder: (context) {
                        return Center(
                          child: Column(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(90),
                                child: Icon(
                                  logic.isCityAdded
                                      ? Icons.chevron_right_rounded
                                      : Icons.add_circle,
                                  color: Colors.blueGrey,
                                  size: 60,
                                ),
                                onTap: () {
                                  logic.isCityAdded
                                      ? logic.removeCity()
                                      : logic.addCity();
                                },
                              ),
                              Text(
                                logic.isCityAdded
                                    ? "Просмотр на главной странице"
                                    : "Добавить на главную",
                              )
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}

class ForecastWidget extends StatefulWidget {
  const ForecastWidget({
    super.key,
    required this.dailyForecasts,
  });

  final List<DailyForecast> dailyForecasts;

  @override
  State<ForecastWidget> createState() => _ForecastWidgetState();
}

class _ForecastWidgetState extends State<ForecastWidget>
    with TickerProviderStateMixin {
  late final ScrollController scrollController1;
  late final ScrollController scrollController2;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    scrollController1 = ScrollController();
    scrollController2 = ScrollController();
    _controller = AnimationController(vsync: this, duration: Durations.long1);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    scrollController1.addListener(() {
      if (scrollController1.offset != scrollController2.offset) {
        scrollController2.jumpTo(scrollController1.offset);
      }
    });
    scrollController2.addListener(() {
      if (scrollController1.offset != scrollController2.offset) {
        scrollController1.jumpTo(scrollController2.offset);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController1.dispose();
    scrollController2.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: Stack(
        children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: scrollController1,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.dailyForecasts.length,
              itemBuilder: (context, index) {
                return ForecastColumnWidget(
                  dailyForecast: widget.dailyForecasts[index],
                );
              },
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            child: ScrollConfiguration(
              behavior: RemoveScrollEffectsBehaviour(),
              child: SingleChildScrollView(
                controller: scrollController2,
                scrollDirection: Axis.horizontal,
                child: CustomPaint(
                  painter:
                      ForecastTempGraphPainter(forecast: widget.dailyForecasts),
                  size: Size(
                    widget.dailyForecasts.length * 90,
                    500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
