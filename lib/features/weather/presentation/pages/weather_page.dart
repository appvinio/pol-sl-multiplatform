import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/dimens.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/blocs/current_weather_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/background_image.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/blur_background_image.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/city_name_and_temperature.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/current_weather_listener.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/weather_description.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/weather_info.dart';
import 'package:pol_sl_wieloplatformowosc/injection_container.dart';
import 'package:sizer/sizer.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key, this.cityName}) : super(key: key);
  final String? cityName;

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late final CurrentWeatherBloc _currentWeatherBloc;

  @override
  void initState() {
    _currentWeatherBloc = sl<CurrentWeatherBloc>();
    _loadWeather();
    super.initState();
  }

  @override
  void dispose() {
    _currentWeatherBloc.close();
    super.dispose();
  }

  void _loadWeather() {
    if (widget.cityName != null) {
      _currentWeatherBloc.add(LoadCurrentWeatherEvent(cityName: widget.cityName!));
    } else {
      _currentWeatherBloc.add(LoadTornadoWeatherEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CurrentWeatherListener(
        currentWeatherBloc: _currentWeatherBloc,
        onRetry: _loadWeather,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 100.h,
                      padding: EdgeInsets.only(
                        right: Dimens.mainHorizontalPaddingPercent.w,
                        top: Dimens.mainHorizontalPaddingPercent.h,
                        bottom: Dimens.mainHorizontalPaddingPercent.h
                      ),
                      child: SafeArea(
                        child: WeatherDescription(
                          description: state.weatherResponse.weather.first.description,
                        ),
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
              return BlurBackgroundImage(
                child: CircularProgressIndicator(),
              );
            }
            return BlurBackgroundImage();
          },
        ),
      ),
    );
  }
}
