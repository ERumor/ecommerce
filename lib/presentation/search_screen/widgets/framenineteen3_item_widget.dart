import '../models/framenineteen3_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class Framenineteen3ItemWidget extends StatelessWidget {
  Framenineteen3ItemWidget(this.framenineteen3ItemModelObj, {super.key});

  Framenineteen3ItemModel framenineteen3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: const EdgeInsets.all(0),
        color: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 190.v,
          width: 158.h,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: framenineteen3ItemModelObj.uSBportHub,
                height: 104.v,
                width: 120.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          framenineteen3ItemModelObj.uSBMicrophone!,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          framenineteen3ItemModelObj.price!,
                          style: CustomTextStyles.labelLargeRed700ExtraBold,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              framenineteen3ItemModelObj.fortyEight!,
                              style: theme.textTheme.labelLarge,
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.v),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHeart,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
