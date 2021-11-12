import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/style/colors.dart';
import 'package:sizer/sizer.dart';

class SingleInfo extends StatelessWidget {
  const SingleInfo({
    Key? key,
    required this.data,
    required this.description,
  }) : super(key: key);
  final String data;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            data,
            style: TextStyle(color: AppColors.whiteColor, fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Text(description, style: TextStyle(color: AppColors.whiteColor, fontSize: 8.sp),)
      ],
    );
  }
}