import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/coord.dart';

part 'coord_model.g.dart';

@JsonSerializable()
class CoordModel extends Coord {
  final double lon;
  final double lat;

  factory CoordModel.fromJson(Map<String, dynamic> json) => _$CoordModelFromJson(json);

  CoordModel({required this.lon, required this.lat});

  @override
  List<Object?> get props => [lon, lat];
}
