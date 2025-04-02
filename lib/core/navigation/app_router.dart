import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_application/core/data/api/cities_api/models/geo_object_model.dart';
import 'package:weather_application/features/city_search/presentation/city_management_screen.dart';
import 'package:weather_application/features/city_search/presentation/city_search_screen.dart';
import 'package:weather_application/features/home/presentation/home_screen.dart';
import 'package:weather_application/features/weather/presentation/weather_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        CustomRoute(
          page: CityManagementRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            );
            return SlideTransition(
              position: Tween(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          durationInMilliseconds: 200,
          reverseDurationInMilliseconds: 200,
        ),
        CustomRoute(
          page: CitySearchRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            );
            return FadeTransition(
              opacity: Tween<double>(begin: 0, end: 1).animate(curvedAnimation),
              child: child,
            );
          },
          durationInMilliseconds: 250,
          reverseDurationInMilliseconds: 250,
        ),
        AutoRoute(page: WeatherRoute.page),
      ];
}
