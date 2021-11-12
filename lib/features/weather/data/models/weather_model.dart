import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather.dart';
part 'weather_model.g.dart';
@JsonSerializable()
class WeatherModel extends Weather{
  final int id;
  final String main;
  final String description;
  final String icon;
  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  WeatherModel({required this.id, required this.main, required this.description, required this.icon});
  @override
  List<Object?> get props => [id, main, description, icon];
}