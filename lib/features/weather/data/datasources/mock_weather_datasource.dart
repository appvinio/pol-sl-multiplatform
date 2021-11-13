import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/mock_weather.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/weather_response_model.dart';

abstract class MockWeatherDataSource {
  Future<WeatherResponseModel> getTornadoWeatherData();
}

class MockWeatherDataSourceImpl implements MockWeatherDataSource {
  @override
  Future<WeatherResponseModel> getTornadoWeatherData() async {
    return MockWeather().toronto;
  }
}
