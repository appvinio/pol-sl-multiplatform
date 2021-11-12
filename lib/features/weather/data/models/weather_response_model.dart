import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/clouds_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/main_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/sys_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/weather_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/data/models/wind_model.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather_response.dart';
import 'coord_model.dart';
part 'weather_response_model.g.dart';
@JsonSerializable()
class WeatherResponseModel extends WeatherResponse{
  final CoordModel coord;
  final List<WeatherModel> weather;
  final String base;
  final MainModel main;
  final int visibility;
  final WindModel wind;
  final CloudsModel clouds;
  final int dt;
  final SysModel sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) => _$WeatherResponseModelFromJson(json);

  WeatherResponseModel({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
  @override
  List<Object?> get props => [coord, weather, base, main, visibility, wind, clouds, dt, sys, timezone, id, name, cod];
}
