import 'package:dio/dio.dart';
import 'package:pol_sl_wieloplatformowosc/core/app/api_keys.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/weather_response_model.dart';

abstract class OpenWeatherDataSource {
  Future<WeatherResponseModel> getCurrentWeatherData();
}

class OpenWeatherDataSourceImpl implements OpenWeatherDataSource {
  final Dio dio;

  OpenWeatherDataSourceImpl({required this.dio});

  @override
  Future<WeatherResponseModel> getCurrentWeatherData() async {
    final result = await dio.get('', queryParameters: {'q': 'Gliwice', 'appid': ApiKeys.openWeatherApiKey, 'units': 'metric', 'lang': 'pl'});
    return WeatherResponseModel.fromJson(result.data);
  }
}
