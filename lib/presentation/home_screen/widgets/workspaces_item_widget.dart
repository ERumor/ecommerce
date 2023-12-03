import '../models/workspaces_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorkspacesItemWidget extends StatelessWidget {
  WorkspacesItemWidget(
    this.workspacesItemModelObj, {
    super.key,
  });

  WorkspacesItemModel workspacesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178.v,
      width: 136.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 69.v,
              width: 117.h,
              margin: EdgeInsets.only(top: 48.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(8.h),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: CustomImageView(
                      imagePath: workspacesItemModelObj.developer,
                      height: 104.v,
                      width: 120.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    workspacesItemModelObj.developer1!,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    workspacesItemModelObj.suggestedItem!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
