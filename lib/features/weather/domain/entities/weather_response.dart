import 'package:equatable/equatable.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/sys.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/weather.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/domain/entities/wind.dart';
import 'clouds.dart';
import 'coord.dart';
import 'main.dart';

abstract class WeatherResponse  extends Equatable{
  Coord get coord;

  List<Weather> get weather;

  String get base;

  Main get main;

  int get visibility;

  Wind get wind;

  Clouds get clouds;

  int get dt;

  Sys get sys;

  int get timezone;

  int get id;

  String get name;

  int get cod;
}
