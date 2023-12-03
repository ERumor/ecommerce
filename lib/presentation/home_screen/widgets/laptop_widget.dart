import '../models/laptop_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LaptopItemWidget extends StatelessWidget {
  LaptopItemWidget(
    this.laptopItemModelObj, {
    super.key,
  });

  LaptopItemModel laptopItemModelObj;

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
                imagePath: laptopItemModelObj.image,
                height: 104.v,
                width: 120.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(bottom: 2.v),
                  color: appTheme.whiteA70001,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Container(
                    height: 83.v,
                    width: 142.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 126.h,
                                  child: Text(
                                    laptopItemModelObj.appleMacbookPro!,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Text(
                                  laptopItemModelObj.price!,
                                  style: CustomTextStyles
                                      .labelLargeRed700ExtraBold,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                laptopItemModelObj.fortyEight!,
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
