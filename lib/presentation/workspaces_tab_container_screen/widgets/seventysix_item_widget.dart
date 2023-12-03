import '../models/seventysix_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeventysixItemWidget extends StatelessWidget {
  SeventysixItemWidget(this.seventysixItemModelObj, {super.key});

  SeventysixItemModel seventysixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Container(
          height: 181.v,
          width: 366.h,
          decoration: AppDecoration.gradientGrayToErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder32,
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 181.v,
                  width: 119.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(32.h),
                    ),
                    gradient: LinearGradient(
                      begin: const Alignment(0.73, 0),
                      end: const Alignment(1.79, 1.35),
                      colors: [
                        theme.colorScheme.onPrimaryContainer,
                        appTheme.gray900,
                        theme.colorScheme.onPrimary,
                      ],
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage30,
                height: 181.v,
                width: 247.h,
                radius: BorderRadius.horizontal(
                  right: Radius.circular(32.h),
                ),
                alignment: Alignment.centerRight,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    top: 22.v,
                  ),
                  child: Text(
                    "msg_featured_workspace".tr,
                    style: CustomTextStyles.labelLargeGray400,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    bottom: 37.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 174.h,
                        child: Text(
                          "msg_professional_gaming".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumGray100,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_view_space".tr,
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVuesaxLinearArrowRight,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80.h,
                            child: Divider(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
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
