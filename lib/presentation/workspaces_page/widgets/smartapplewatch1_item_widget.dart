import '../models/smartapplewatch1_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Smartapplewatch1ItemWidget extends StatelessWidget {
  Smartapplewatch1ItemWidget(
    this.smartapplewatch1ItemModelObj, {
    super.key,
  });

  Smartapplewatch1ItemModel smartapplewatch1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: const EdgeInsets.all(0),
            color: appTheme.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 86.v,
              width: 105.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: smartapplewatch1ItemModelObj.image,
                    height: 82.adaptSize,
                    width: 82.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: smartapplewatch1ItemModelObj.image1,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 4.v),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  smartapplewatch1ItemModelObj.smartAppleWatch!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Text(
                      smartapplewatch1ItemModelObj.maddyWorkspaces!,
                      style: CustomTextStyles.labelLargeGray500_1,
                    ),
                    Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 6.v,
                        bottom: 6.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        smartapplewatch1ItemModelObj.fortyEight!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStar,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(left: 4.h),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                Text(
                  smartapplewatch1ItemModelObj.price!,
                  style: CustomTextStyles.titleMediumRed700ExtraBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
