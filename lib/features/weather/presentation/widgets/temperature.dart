import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/colors.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/shadows.dart';
import 'package:sizer/sizer.dart';

import 'circle.dart';

class Temperature extends StatelessWidget {
  const Temperature({
    Key? key,
    required this.degrees,
  }) : super(key: key);
  final int degrees;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$degrees',
          style: TextStyle(
            fontSize: 120.sp,
            letterSpacing: -14,
            height: 1,
            color: AppColors.whiteColor,
            shadows: [Shadows.textShadow],
          ),
        ),
        SizedBox(width: 8.0.sp,),
        Stack(
          children: [
            Transform.translate(
              offset: Shadows.textShadow.offset,
              child: Circle(
                color: Colors.transparent,
                borderColor: AppColors.blackColor,
              ),
            ),
            Circle(
              color: Colors.transparent,
              borderColor: AppColors.whiteColor,
            ),
          ],
        )
      ],
    );
  }
}
