import 'package:equatable/equatable.dart';

abstract class Sys extends Equatable {
   int get type;
   int get id;
   double? get message;
   String get country;
   int get sunrise;
   int get sunset;
}
