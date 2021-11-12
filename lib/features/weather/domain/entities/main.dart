import 'package:equatable/equatable.dart';

abstract class Main extends Equatable {
   double get temp;
   double get feelsLike;
   double get tempMin;
   double get tempMax;
   int get pressure;
   int get humidity;
}
