import 'package:flutter/material.dart';

import 'package:ecommerce/core/app_export.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
    this.alignment,
    this.backgroundColor,
    this.width,
    this.height,
    this.decoration,
    this.child,
  });

  final Alignment? alignment;

  final Color? backgroundColor;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }

  Widget get fabWidget => FloatingActionButton(
        backgroundColor: backgroundColor,
        onPressed: goCart,
        child: Container(
          alignment: Alignment.center,
          width: width ?? 0,
          height: height ?? 0,
          decoration: decoration ??
              BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(35.h),
              ),
          child: child,
        ),
      );
}

/// Extension on [CustomFloatingButton] to facilitate inclusion of all types of border style etc
extension FloatingButtonStyleHelper on CustomFloatingButton {
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadius.circular(30.h),
      );
}

void goCart() {
  NavigatorService.pushNamed(
    AppRoutes.cartScreen,
  );
}
