import 'package:pol_sl_wieloplatformowosc/features/weather/data/datasources/open_weather_datasource.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/repositories/open_weather_repository_impl.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/repositories/open_weather_repository.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/usecases/get_current_weather_usecase.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/blocs/current_weather_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/injection_container.dart';

mixin WeatherInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();
    // blocs
    sl.registerFactory(() => CurrentWeatherBloc(getCurrentWeatherUsecase: sl()));

    // usecases
    sl.registerLazySingleton(() => GetCurrentWeatherUsecase(repository: sl()));

    // repositories
    sl.registerLazySingleton<OpenWeatherRepository>(() => OpenWeatherRepositoryImpl(dataSource: sl()));

    // datasources
    sl.registerLazySingleton<OpenWeatherDataSource>(() => OpenWeatherDataSourceImpl(dio: sl(instanceName: globalDio)));
  }
}
