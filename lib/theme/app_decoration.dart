import 'package:flutter/material.dart';
import 'package:ecommerce/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGrayAb => BoxDecoration(
        color: appTheme.gray50Ab,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-0.13, -0.06),
          end: const Alignment(1.93, 4.88),
          colors: [
            appTheme.gray90001,
            theme.colorScheme.onPrimary,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.97, 1.21),
          end: const Alignment(0, -0.95),
          colors: [
            appTheme.whiteA70001.withOpacity(0.02),
            appTheme.whiteA70001.withOpacity(0.02),
            appTheme.whiteA70001.withOpacity(0.02),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA70001 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.whiteA70001.withOpacity(0.75),
            appTheme.whiteA70001.withOpacity(0.75),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.lightGreen500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.red700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRed700 => BoxDecoration(
        color: appTheme.red700,
        border: Border.all(
          color: appTheme.red700,
          width: 1.h,
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA70001.withOpacity(0.67),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder21 => BorderRadius.circular(
        21.h,
      );

  // Custom borders
  static BorderRadius get customBorderLR32 => BorderRadius.horizontal(
        right: Radius.circular(32.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
