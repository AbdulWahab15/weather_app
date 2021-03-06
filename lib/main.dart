import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_repository/weather_repository.dart';

import 'bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
        () => runApp(WeatherApp(weatherRepository: WeatherRepository())),
    blocObserver: WeatherBlocObserver(),
    storage: storage,
  );
}
