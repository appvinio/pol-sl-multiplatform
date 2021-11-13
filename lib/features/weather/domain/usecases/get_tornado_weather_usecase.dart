import 'package:dartz/dartz.dart';
import 'package:pol_sl_wieloplatformowosc/core/error/failures.dart';
import 'package:pol_sl_wieloplatformowosc/core/usecases/usecase.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/repositories/mock_weather_repository.dart';

class GetTornadoWeatherUsecase extends UseCase<WeatherResponse, NoParams> {
  final MockWeatherRepository repository;

  GetTornadoWeatherUsecase({required this.repository});

  Future<Either<Failure, WeatherResponse>> call(NoParams params) async {
    return repository.getTornadoWeather();
  }
}
