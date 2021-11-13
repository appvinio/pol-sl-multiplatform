import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pol_sl_wieloplatformowosc/core/error/failures.dart';
import 'package:pol_sl_wieloplatformowosc/core/usecases/usecase.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/repositories/open_weather_repository.dart';

class GetCurrentWeatherUsecase extends UseCase<WeatherResponse, CityNameParams> {
  final OpenWeatherRepository repository;

  GetCurrentWeatherUsecase({required this.repository});

  Future<Either<Failure, WeatherResponse>> call(CityNameParams params) async {
    return repository.getTornadoWeather(params.cityName);
  }
}
class CityNameParams extends Equatable{
  final String cityName;

  CityNameParams({required this.cityName});

  @override
  List<Object?> get props => [cityName];
}
