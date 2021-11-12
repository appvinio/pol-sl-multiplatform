import 'package:json_annotation/json_annotation.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/clouds.dart';
part 'clouds_model.g.dart';

@JsonSerializable()
class CloudsModel extends Clouds{
  final int all;
  factory CloudsModel.fromJson(Map<String, dynamic> json) => _$CloudsModelFromJson(json);

  CloudsModel({required this.all});
  @override
  List<Object?> get props => [all];
}
