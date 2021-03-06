import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:pol_sl_wieloplatformowosc/core/error/failures.dart';

import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';

abstract class MockWeatherRepository {
  Future<Either<Failure, WeatherResponse>> getTornadoWeather();
}
