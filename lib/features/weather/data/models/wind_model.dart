import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/wind.dart';
part 'wind_model.g.dart';
@JsonSerializable()
class WindModel extends Wind{
  final double speed;
  final int deg;

  factory WindModel.fromJson(Map<String, dynamic> json) => _$WindModelFromJson(json);
  WindModel({
    required this.speed,
    required this.deg,
  });
  @override
  List<Object?> get props => [speed, deg];
}
