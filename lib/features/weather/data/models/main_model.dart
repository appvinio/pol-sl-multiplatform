import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/main.dart';
part 'main_model.g.dart';
@JsonSerializable()
class MainModel extends Main{
  final double temp;
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @JsonKey(name: 'temp_max')
  final double tempMax;
  final int pressure;
  final int humidity;
  factory MainModel.fromJson(Map<String, dynamic> json) => _$MainModelFromJson(json);

  MainModel({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });
  @override
  List<Object?> get props => [temp, feelsLike, tempMin, tempMax, pressure, humidity];
}
