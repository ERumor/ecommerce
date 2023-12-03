import '../models/developer_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeveloperItemWidget extends StatelessWidget {
  DeveloperItemWidget(this.developerItemModelObj, {super.key});

  DeveloperItemModel developerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 2.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: developerItemModelObj.developer,
            height: 56.v,
            width: 64.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 13.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  developerItemModelObj.developer1!,
                  style: CustomTextStyles.titleMediumExtraBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  developerItemModelObj.suggestedItems!,
                  style: CustomTextStyles.labelLargeGray500_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
