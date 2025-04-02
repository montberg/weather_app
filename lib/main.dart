import 'package:flutter/material.dart';
import 'package:weather_application/core/di/service_locator.dart';
import 'package:weather_application/core/navigation/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appRouter = AppRouter();
  await ServiceLocator.init();
  runApp(
    MyApp(
      appRouter: appRouter,
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter;
  const MyApp({super.key, required appRouter}) : _appRouter = appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
