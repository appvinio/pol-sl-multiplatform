part of 'current_weather_bloc.dart';

abstract class CurrentWeatherState extends Equatable {
  const CurrentWeatherState();

  @override
  List<Object> get props => [];
}

class CurrentWeatherInitialState extends CurrentWeatherState {}

class CurrentWeatherLoadingState extends CurrentWeatherState {}

class CurrentWeatherDataState extends CurrentWeatherState {
  final WeatherResponse weatherResponse;

  CurrentWeatherDataState({required this.weatherResponse});
  @override
  List<Object> get props => [weatherResponse];
}

class CurrentWeatherErrorState extends CurrentWeatherState {
  final Failure failure;

  CurrentWeatherErrorState({required this.failure});
  @override
  List<Object> get props => [failure];
}
