import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/clouds_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/main_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/sys_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/weather_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/wind_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/weather_response_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/coord_model.dart';

class MockWeather {
  final toronto = WeatherResponseModel(
    coord: CoordModel(lon: 22.0, lat: 23.0),
    weather: [
      WeatherModel(
        id: 1,
        main: 'tornado',
        description: 'tornado',
        icon: 'icon',
      ),
    ],
    base: 'base',
    visibility: 8000,
    wind: WindModel(speed: 200, deg: 0),
    clouds: CloudsModel(all: 80),
    dt: 0,
    sys: SysModel(
      type: 0,
      id: 0,
      message: 0.0,
      country: 'Kanada',
      sunrise: 0,
      sunset: 0,
    ),
    timezone: 0,
    id: 0,
    name: 'Toronto',
    cod: 0,
    main: MainModel(
      temp: 7,
      feelsLike: 7,
      tempMax: 12,
      tempMin: 1,
      pressure: 1012,
      humidity: 77,
    ),
  );
}
