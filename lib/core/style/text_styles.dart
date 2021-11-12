import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

const poppinsStyleName = 'Poppins';

CustomTextStyle get poppins => Poppins();

class Poppins extends CustomTextStyle {
  const Poppins() : super._(fontFamily: poppinsStyleName);
}

class CustomTextStyle extends TextStyle {
  const CustomTextStyle._({
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextLeadingDistribution? leadingDistribution,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? textOverflow,
  }) : super(
          inherit: inherit,
          color: color,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          leadingDistribution: leadingDistribution,
          textBaseline: textBaseline,
          height: height,
          locale: locale,
          foreground: foreground,
          background: background,
          shadows: shadows,
          fontFeatures: fontFeatures,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          debugLabel: debugLabel,
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
          package: package,
        );


  CustomTextStyle get s12 => copyWith(fontSize: 12);

  CustomTextStyle get s14 => copyWith(fontSize: 14);

  CustomTextStyle get s20 => copyWith(fontSize: 20);

  CustomTextStyle get s30 => copyWith(fontSize: 30);


  CustomTextStyle get colorPrimary => copyWith(color: AppColors.primaryColor);

  CustomTextStyle get colorWhite => copyWith(color: AppColors.whiteColor);

  CustomTextStyle get colorBlack => copyWith(color: AppColors.blackColor);


  CustomTextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  CustomTextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  CustomTextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  CustomTextStyle get light => copyWith(fontWeight: FontWeight.w300);

  CustomTextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  CustomTextStyle get h13 => copyWith(height: 1.3);

  CustomTextStyle get underlined => copyWith(decoration: TextDecoration.underline);

  CustomTextStyle get crossed => copyWith(decoration: TextDecoration.lineThrough);

  CustomTextStyle copyWith({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) {
    return CustomTextStyle._(
      inherit: inherit ?? this.inherit,
      color: this.foreground == null && foreground == null ? color ?? this.color : null,
      backgroundColor: this.background == null && background == null ? backgroundColor ?? this.backgroundColor : null,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      locale: locale ?? this.locale,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      textOverflow: overflow,
    );
  }
}
