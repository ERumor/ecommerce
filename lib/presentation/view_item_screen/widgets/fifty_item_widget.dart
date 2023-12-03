import '../models/fifty_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftyItemWidget extends StatelessWidget {
  FiftyItemWidget(
    this.fiftyItemModelObj, {
    super.key,
  });

  FiftyItemModel fiftyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.h, 22.v, 24.h, 47.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                top: 9.v,
                bottom: 319.v,
              ),
            ),
            const Spacer(
              flex: 56,
            ),
            Container(
              height: 314.v,
              width: 170.h,
              margin: EdgeInsets.only(top: 38.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 83.v,
                      width: 170.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray90026,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage7,
                    height: 308.v,
                    width: 161.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 43,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 37.v),
              child: Column(
                children: [
                  CustomIconButton(
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    decoration: IconButtonStyleHelper.outlineGray,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRefresh,
                    ),
                  ),
                  SizedBox(height: 66.v),
                  Container(
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlineRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 57.v,
                      width: 59.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: 54.v,
                        width: 28.h,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 57.v,
                      width: 59.h,
                      decoration: AppDecoration.fillGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle31,
                        height: 57.v,
                        width: 59.h,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    color: appTheme.whiteA70001,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 65.v,
                      width: 67.h,
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 57.v,
                              width: 59.h,
                              decoration: BoxDecoration(
                                color: appTheme.green50,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle3165x67,
                            height: 65.v,
                            width: 67.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
