import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/app/extensions.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/colors.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/shadows.dart';
import 'package:sizer/sizer.dart';

class WeatherDescription extends StatelessWidget {
  const WeatherDescription({Key? key, required this.description}) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        description.capitalize,
        style: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
          shadows: [Shadows.textShadow],
        ),
      ),
    );
  }
}
