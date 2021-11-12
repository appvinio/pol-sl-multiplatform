import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/injection_container.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'app_config.dart';

final sl = GetIt.instance;

const globalDio = 'global';

class InjectionContainer extends Injector with WeatherInjector{}

abstract class Injector {
  @mustCallSuper
  Future<void> init() async {
    sl.registerLazySingleton<AppConfig>(() => AppConfig());
    sl.registerLazySingleton<Dio>(
      () {
        final dio = Dio(BaseOptions(
          baseUrl: sl<AppConfig>().api,
          connectTimeout: 15000,
          receiveTimeout: 15000,
        ));
        dio
          ..options.headers = {"content-type": "application/json", "Accept": "application/json"}
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            requestBody: true,
            requestHeader: true,
            responseHeader: true,
            request: true,
          ));
        return dio;
      },
      instanceName: globalDio,
    );
  }
}
