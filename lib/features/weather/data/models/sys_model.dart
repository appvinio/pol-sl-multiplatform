import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/sys.dart';
part 'sys_model.g.dart';
@JsonSerializable()
class SysModel extends Sys{
  final int type;
  final int id;
  final double? message;
  final String country;
  final int sunrise;
  final int sunset;
  factory SysModel.fromJson(Map<String, dynamic> json) => _$SysModelFromJson(json);

  SysModel(
      {required this.type,
      required this.id,
      required this.message,
      required this.country,
      required this.sunrise,
      required this.sunset});
  @override
  List<Object?> get props => [type, id, message, country, sunrise, sunset];
}
