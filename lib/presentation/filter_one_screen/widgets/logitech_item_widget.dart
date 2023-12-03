import '../models/logitech_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LogitechItemWidget extends StatelessWidget {
  LogitechItemWidget(
    this.logitechItemModelObj, {
    super.key,
  });

  LogitechItemModel logitechItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              logitechItemModelObj.laptops!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: logitechItemModelObj.apple,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              left: 260.h,
              top: 5.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
