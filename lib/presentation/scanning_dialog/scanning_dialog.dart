import 'bloc/scanning_bloc.dart';
import 'models/scanning_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ScanningDialog extends StatelessWidget {
  const ScanningDialog({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<ScanningBloc>(
      create: (context) => ScanningBloc(ScanningState(
        scanningModelObj: const ScanningModel(),
      ))
        ..add(ScanningInitialEvent()),
      child: const ScanningDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Opacity(
      opacity: 0.9,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 49.v,
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    color: appTheme.gray100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Container(
                      height: 116.v,
                      width: 90.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle50,
                            height: 91.v,
                            width: 66.h,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 20.v,
                              width: 37.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray10003,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 139.h,
                          child: Text(
                            "msg_blush_brass_desk".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Row(
                          children: [
                            Text(
                              "msg_good_for_developer".tr,
                              style: CustomTextStyles.labelLargeGreen500,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgVuesaxLinearTickCircle,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                        SizedBox(height: 12.v),
                        SizedBox(
                          width: 133.h,
                          child: Text(
                            "msg_your_suggestion".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.labelLargeRed700_1,
                          ),
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
