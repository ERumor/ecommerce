import '../models/orders_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrdersItemWidget extends StatelessWidget {
  OrdersItemWidget(this.ordersItemModelObj, {super.key});

  OrdersItemModel ordersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ordersItemModelObj.image,
                    height: 104.v,
                    width: 98.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 19.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 228.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 16.v),
                                child: Text(
                                  ordersItemModelObj.month!,
                                  style: CustomTextStyles.labelLargeBlack90001,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 16.v),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "lbl_095672".tr,
                                        style:
                                            CustomTextStyles.labelLargeRed700,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 199.h,
                          child: Text(
                            ordersItemModelObj.appleAirpodsPro!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            CustomOutlinedButton(
              height: 42.v,
              text: "lbl_view_item".tr,
              buttonTextStyle: theme.textTheme.titleMedium!,
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }
}
