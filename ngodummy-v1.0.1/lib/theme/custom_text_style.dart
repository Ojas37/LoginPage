import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumBluegray80001 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get displayMediumBluegray80001_1 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  // Headline text style
  static get headlineLargeBluegray80001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeBluegray80001Medium =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
