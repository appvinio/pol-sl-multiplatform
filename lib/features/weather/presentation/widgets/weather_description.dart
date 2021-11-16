import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/app/extensions.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/colors.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/dimens.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/shadows.dart';
import 'package:sizer/sizer.dart';

class WeatherDescription extends StatelessWidget {
  const WeatherDescription({Key? key, required this.description}) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: AutoSizeText(
        description.capitalize,
        maxLines: 1,
        textAlign: TextAlign.right,
        minFontSize: Dimens.minFontSize,
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
