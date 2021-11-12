import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
    required this.color,
    required this.borderColor,
  }) : super(key: key);
  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.sp,
      width: 18.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: 4.0.sp),
      ),
    );
  }
}
