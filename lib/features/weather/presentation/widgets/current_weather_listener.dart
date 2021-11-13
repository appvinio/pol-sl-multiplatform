import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/blocs/current_weather_bloc.dart';
import 'package:pol_sl_wieloplatformowosc/generated/l10n.dart';

class CurrentWeatherListener extends StatelessWidget {
  const CurrentWeatherListener({
    Key? key,
    this.child,
    required this.currentWeatherBloc,
    this.onRetry,
  }) : super(key: key);
  final CurrentWeatherBloc currentWeatherBloc;
  final Widget? child;
  final Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: currentWeatherBloc,
      listener: (context, state) {
        if (state is CurrentWeatherErrorState) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => AlertDialog(
              title: Text(state.failure.errorMessage),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    S.of(context).changeCity,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onRetry?.call();
                  },
                  child: Text(
                    S.of(context).tryAgain,
                  ),
                ),
              ],
            ),
          );
        }
      },
      child: child,
    );
  }
}
