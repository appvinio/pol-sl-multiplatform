import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/images/image_provider.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/blocs/current_weather_bloc.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
    required this.currentWeatherBloc,
  }) : super(key: key);
  final CurrentWeatherBloc currentWeatherBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: currentWeatherBloc,
      builder: (context, state) {
        if (state is CurrentWeatherDataState) {
          return Container(
            constraints: BoxConstraints.expand(),
            child: Image.asset(
              WeatherImageProvider(weatherName: state.weatherResponse.weather.first.main).path,
              fit: BoxFit.cover,
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}