import 'package:equatable/equatable.dart';

abstract class Wind extends Equatable {
  double get speed;

  int get deg;
}
