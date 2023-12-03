import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray100,
      );
  // Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeBlack90001Black => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeBlack90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get labelLargeDeeporange300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrange300,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeExtraBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get labelLargeGray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray300,
      );
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeGray400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray500ExtraBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeGray500_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static get labelLargeGreen500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green500,
        fontWeight: FontWeight.w800,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get labelLargePrimaryBlack => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w900,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelLargeRed700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeRed700ExtraBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeRed700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red700,
      );
  // Title text style
  static get titleLargeGray100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleLargeRed700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red700,
      );
  static get titleMediumBlack => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBlack18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBlack18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBlack90002_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w800,
        fontSize: 20.fSize,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumGray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray300,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumGray600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGreen500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green500,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumRed700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumRed700ExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w900,
      );
}

extension on TextStyle {
  TextStyle get avenir {
    return copyWith(
      fontFamily: 'Avenir',
    );
  }
}
