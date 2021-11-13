import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:pol_sl_wieloplatformowosc/core/error/failures.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/datasources/mock_weather_datasource.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/repositories/mock_weather_repository.dart';

class MockWeatherRepositoryImpl implements MockWeatherRepository{
  final MockWeatherDataSource dataSource;

  MockWeatherRepositoryImpl({required this.dataSource});

  Future<Either<Failure, WeatherResponse>> getTornadoWeather() async {
    try {
      final result = await dataSource.getTornadoWeatherData();
      return Right(result);
    } catch (e) {
      return Left(GetCurrentWeatherFailure());
    }
  }
}
