part of 'current_weather_bloc.dart';

abstract class CurrentWeatherEvent extends Equatable {
  const CurrentWeatherEvent();
  @override
  List<Object?> get props => [];
}
class LoadCurrentWeatherEvent extends CurrentWeatherEvent{
  final String cityName;

  LoadCurrentWeatherEvent({required this.cityName});
}
class LoadTornadoWeatherEvent extends CurrentWeatherEvent{}
