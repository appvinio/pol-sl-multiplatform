import 'package:equatable/equatable.dart';
import 'package:pol_sl_wieloplatformowosc/generated/l10n.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [errorMessage];

  String get errorMessage => S.current.defaultError;
}

class GetCurrentWeatherFailure extends Failure {
  @override
  String get errorMessage => S.current.getCurrentWeatherError;
}
