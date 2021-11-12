import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/city_name.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/temperature.dart';

class CityNameAndTemperatures extends StatelessWidget {
  const CityNameAndTemperatures({Key? key, required this.cityName, required this.degrees}) : super(key: key);
  final int degrees;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CityName(cityName: cityName),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Temperature(
            degrees: degrees,
          ),
        ),
      ],
    );
  }
}