import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/colors.dart';
import 'package:pol_sl_wieloplatformowosc/features/weather/presentation/widgets/single_info.dart';
import 'package:pol_sl_wieloplatformowosc/generated/l10n.dart';
import 'package:sizer/sizer.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    Key? key,
    required this.humidityInPercent,
    required this.visibilityInKm,
    required this.pressureInHPa,
  }) : super(key: key);
  final int humidityInPercent;
  final int visibilityInKm;
  final int pressureInHPa;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.blackColor.withOpacity(.2),
          border: Border.all(color: AppColors.whiteColor, width: 2.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleInfo(data: '$humidityInPercent${S.of(context).percentChar}', description: S.of(context).humidity),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: SingleInfo(data: '$visibilityInKm ${S.of(context).km}', description: S.of(context).visibility),
            ),
            SingleInfo(data: '$pressureInHPa ${S.of(context).hPa}', description: S.of(context).pressure)
          ],
        ),
      ),
    );
  }
}
