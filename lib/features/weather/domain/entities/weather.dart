import 'package:equatable/equatable.dart';

abstract class Weather extends Equatable {
  int get id;

  String get main;

  String get description;

  String get icon;
}
