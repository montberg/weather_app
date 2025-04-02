// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CityManagementRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CityManagementScreen(),
      );
    },
    CitySearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CitySearchScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    WeatherRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WeatherScreen(
          key: args.key,
          city: args.city,
        ),
      );
    },
  };
}

/// generated route for
/// [CityManagementScreen]
class CityManagementRoute extends PageRouteInfo<void> {
  const CityManagementRoute({List<PageRouteInfo>? children})
      : super(
          CityManagementRoute.name,
          initialChildren: children,
        );

  static const String name = 'CityManagementRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CitySearchScreen]
class CitySearchRoute extends PageRouteInfo<void> {
  const CitySearchRoute({List<PageRouteInfo>? children})
      : super(
          CitySearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'CitySearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WeatherScreen]
class WeatherRoute extends PageRouteInfo<WeatherRouteArgs> {
  WeatherRoute({
    Key? key,
    required GeoObject city,
    List<PageRouteInfo>? children,
  }) : super(
          WeatherRoute.name,
          args: WeatherRouteArgs(
            key: key,
            city: city,
          ),
          initialChildren: children,
        );

  static const String name = 'WeatherRoute';

  static const PageInfo<WeatherRouteArgs> page =
      PageInfo<WeatherRouteArgs>(name);
}

class WeatherRouteArgs {
  const WeatherRouteArgs({
    this.key,
    required this.city,
  });

  final Key? key;

  final GeoObject city;

  @override
  String toString() {
    return 'WeatherRouteArgs{key: $key, city: $city}';
  }
}
