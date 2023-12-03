import '../models/eightytwo_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class EightytwoItemWidget extends StatelessWidget {
  EightytwoItemWidget(this.eightytwoItemModelObj, {super.key});

  EightytwoItemModel eightytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
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
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: eightytwoItemModelObj.image,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWishlistWhiteA70001,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eightytwoItemModelObj.smartAppleWatch!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      eightytwoItemModelObj.maddyWorkspaces!,
                      style: CustomTextStyles.labelLargeGray500_1,
                    ),
                    Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 7.v,
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
                        eightytwoItemModelObj.fortyEight!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgStar,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11.v),
                Text(
                  eightytwoItemModelObj.price!,
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
