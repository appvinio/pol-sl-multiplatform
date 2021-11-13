import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pol_sl_wieloplatformowosc/core/app/images.dart';

class BlurBackgroundImage extends StatelessWidget {
  const BlurBackgroundImage({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Images.clouds,
          fit: BoxFit.cover,
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Center(child: child),
          ),
        ),
      ],
    );
  }
}