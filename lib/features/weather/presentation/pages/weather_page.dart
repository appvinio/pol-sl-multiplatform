import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/dimens.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/blocs/current_weather_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/background_image.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/city_name_and_temperature.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/current_weather_listener.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/weather_description.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/weather_info.dart';
import 'package:pol_sl_wieloplatformowosc/injection_container.dart';
import 'package:sizer/sizer.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late final CurrentWeatherBloc _currentWeatherBloc;

  @override
  void initState() {
    _currentWeatherBloc = sl<CurrentWeatherBloc>()..add(LoadCurrentWeatherEvent());
    super.initState();
  }

  @override
  void dispose() {
    _currentWeatherBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CurrentWeatherListener(
        currentWeatherBloc: _currentWeatherBloc,
        child: BlocBuilder(
          bloc: _currentWeatherBloc,
          builder: (context, state) {
            if (state is CurrentWeatherDataState) {
              return Stack(
                children: [
                  BackgroundImage(
                    currentWeatherBloc: _currentWeatherBloc,
                  ),
                  Positioned(
                      top: Dimens.mainHorizontalPaddingPercent.h,
                      left: Dimens.mainHorizontalPaddingPercent.w,
                      child: SafeArea(
                        child: CityNameAndTemperatures(
                          cityName: state.weatherResponse.name,
                          degrees: state.weatherResponse.main.temp.round(),
                        ),
                      )),
                  Positioned(
                    right: Dimens.mainHorizontalPaddingPercent.w,
                    top: Dimens.mainHorizontalPaddingPercent.h,
                    child: SafeArea(
                      child: WeatherDescription(
                        description: state.weatherResponse.weather.first.description,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Dimens.mainVerticalPaddingPercent.h,
                    left: 0,
                    right: 0,
                    child: SafeArea(
                      child: WeatherInfo(
                        humidityInPercent: state.weatherResponse.main.humidity,
                        visibilityInKm: (state.weatherResponse.visibility / 1000).round(),
                        pressureInHPa: state.weatherResponse.main.pressure,
                      ),
                    ),
                  ),
                ],
              );
            } else if (state is CurrentWeatherLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
