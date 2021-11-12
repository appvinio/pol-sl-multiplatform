import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:pol_sl_wieloplatformowosc/core/error/failures.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/datasources/open_weather_datasource.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/repositories/open_weather_repository.dart';

class OpenWeatherRepositoryImpl implements OpenWeatherRepository{
  final OpenWeatherDataSource dataSource;

  OpenWeatherRepositoryImpl({required this.dataSource});

  Future<Either<Failure, WeatherResponse>> getCurrentWeather() async {
    try {
      final result = await dataSource.getCurrentWeatherData();
      return Right(result);
    } catch (e) {
      return Left(GetCurrentWeatherFailure());
    }
  }
}
