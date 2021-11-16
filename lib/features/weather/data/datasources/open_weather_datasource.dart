import 'package:dio/dio.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/weather_response_model.dart';

abstract class OpenWeatherDataSource {
  Future<WeatherResponseModel> getCurrentWeatherData(String cityName);
}

class OpenWeatherDataSourceImpl implements OpenWeatherDataSource {
  final Dio dio;

  OpenWeatherDataSourceImpl({required this.dio});

  @override
  Future<WeatherResponseModel> getCurrentWeatherData(String cityName) async {
    final result = await dio.get('',
        queryParameters: {'q': '$cityName', 'appid': 'c71343e31d7f9b95579f2f286383db34', 'units': 'metric', 'lang': 'pl'});
    return WeatherResponseModel.fromJson(result.data);
  }
}
