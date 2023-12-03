import '../models/cart_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj, {super.key});

  CartItemModel cartItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: appTheme.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 125.v,
        width: 366.h,
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomElevatedButton(
              height: 22.v,
              width: 55.h,
              text: "lbl_remove".tr,
              margin: EdgeInsets.only(
                right: 3.h,
                bottom: 1.v,
              ),
              buttonStyle: CustomButtonStyles.fillWhiteA,
              buttonTextStyle: theme.textTheme.labelMedium!,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(
                    height: 94.v,
                    width: 100.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 94.v,
                            width: 97.h,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA70001,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: cartItemModelObj.image,
                          height: 90.v,
                          width: 100.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 194.h,
                          child: Text(
                            cartItemModelObj.adjustableOffice!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          cartItemModelObj.price!,
                          style: CustomTextStyles.labelLargeRed700ExtraBold,
                        ),
                        SizedBox(height: 5.v),
                        Row(
                          children: [
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(3.h),
                              decoration: IconButtonStyleHelper.outlineBlueGray,
                              child: CustomImageView(
                                imagePath: cartItemModelObj.minus,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                cartItemModelObj.one!,
                                style: CustomTextStyles.titleMediumGray500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: CustomIconButton(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                decoration:
                                    IconButtonStyleHelper.outlineBlueGray,
                                child: CustomImageView(
                                  imagePath: cartItemModelObj.add,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
