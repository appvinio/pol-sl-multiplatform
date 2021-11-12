import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/colors.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/shadows.dart';
import 'package:sizer/sizer.dart';

class CityName extends StatelessWidget {
  const CityName({
    Key? key,
    required this.cityName,
  }) : super(key: key);
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Text(
      cityName.toUpperCase(),
      style: TextStyle(fontSize: 22.sp, color: AppColors.whiteColor, letterSpacing: 1.4,
      shadows: [Shadows.textShadow]
      ),
    );
  }
}