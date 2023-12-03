import '../models/devworkspaces_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DevworkspacesItemWidget extends StatelessWidget {
  DevworkspacesItemWidget(
    this.devworkspacesItemModelObj, {
    super.key,
  });

  DevworkspacesItemModel devworkspacesItemModelObj;

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
        height: 188.v,
        width: 171.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: devworkspacesItemModelObj.mMacbookPro,
              height: 90.v,
              width: 119.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 2.v,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        imagePath: devworkspacesItemModelObj.heart,
                      ),
                    ),
                    SizedBox(height: 43.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      color: appTheme.whiteA70001,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Container(
                        height: 97.v,
                        width: 150.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 7.v,
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
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  right: 3.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 124.h,
                                      child: Text(
                                        devworkspacesItemModelObj.mMacbookPro1!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    SizedBox(height: 2.v),
                                    Text(
                                      devworkspacesItemModelObj.price!,
                                      style: CustomTextStyles
                                          .labelLargeRed700ExtraBold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      devworkspacesItemModelObj.fortyTwo!,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
