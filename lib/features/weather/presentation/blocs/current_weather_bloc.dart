import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pol_sl_wieloplatformowosc/core/error/failures.dart';
import 'package:pol_sl_wieloplatformowosc/core/usecases/usecase.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/usecases/get_current_weather_usecase.dart';

part 'current_weather_event.dart';

part 'current_weather_state.dart';

class CurrentWeatherBloc extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  CurrentWeatherBloc({required this.getCurrentWeatherUsecase,}) : super(CurrentWeatherInitialState());
  final GetCurrentWeatherUsecase getCurrentWeatherUsecase;

  @override
  Stream<CurrentWeatherState> mapEventToState(
    CurrentWeatherEvent event,
  ) async* {
    if(event is LoadCurrentWeatherEvent){
      yield CurrentWeatherLoadingState();
      final result = await getCurrentWeatherUsecase(NoParams());
      yield* result.fold(
          (error) async*{
              yield CurrentWeatherErrorState(failure: error);
          },
          (data) async*{
              yield CurrentWeatherDataState(weatherResponse: data);
          },
      );
    }
  }
}
