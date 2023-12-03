import '../models/collections_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CollectionsItemWidget extends StatelessWidget {
  CollectionsItemWidget(this.collectionsItemModelObj, {super.key});

  CollectionsItemModel collectionsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 158.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              height: 103.v,
              width: 142.h,
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: CustomImageView(
                imagePath: collectionsItemModelObj.smartWatch,
                height: 102.v,
                width: 108.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            collectionsItemModelObj.smartWatch1!,
            style: CustomTextStyles.titleMediumExtraBold,
          ),
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                collectionsItemModelObj.seeCollection!,
                style: CustomTextStyles.labelLargeRed700ExtraBold,
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
