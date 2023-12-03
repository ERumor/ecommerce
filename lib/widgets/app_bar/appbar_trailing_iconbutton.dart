import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    super.key,
    this.imagePath,
    this.margin,
    this.onTap,
  });

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 47.adaptSize,
          width: 47.adaptSize,
          decoration: IconButtonStyleHelper.outlineGray,
          child: CustomImageView(imagePath: imagePath),
        ),
      ),
    );
  }
}
