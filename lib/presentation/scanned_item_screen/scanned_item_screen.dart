import 'bloc/scanned_item_bloc.dart';
import 'models/scanned_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScannedItemScreen extends StatelessWidget {
  const ScannedItemScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<ScannedItemBloc>(
        create: (context) => ScannedItemBloc(
            ScannedItemState(scannedItemModelObj: const ScannedItemModel()))
          ..add(ScannedItemInitialEvent()),
        child: const ScannedItemScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ScannedItemBloc, ScannedItemState>(
        builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.whiteA70001.withOpacity(0.67),
          body: Opacity(
            opacity: 0.9,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildExploresWorkspace(context),
                  SizedBox(height: 16.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("msg_blush_brass_desk".tr,
                              style: theme.textTheme.titleLarge))),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text("msg_good_for_developer".tr,
                                  style: CustomTextStyles.titleMediumGreen500)),
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgVuesaxLinearTickCircle,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(left: 4.h, bottom: 3.v))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: _buildPrice(context,
                          price1: "lbl_description".tr,
                          price2: "lbl_change".tr)),
                  SizedBox(height: 6.v),
                  Container(
                      width: 366.h,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Text("msg_this_led_desk_lamp".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "lbl_add_price_range".tr,
                        style: CustomTextStyles.titleMediumGray600_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: SliderTheme(
                      data: SliderThemeData(
                          trackShape: const RoundedRectSliderTrackShape(),
                          activeTrackColor: appTheme.deepOrange300,
                          inactiveTrackColor: appTheme.gray100,
                          thumbColor: appTheme.deepOrange300,
                          thumbShape: const RoundSliderThumbShape()),
                      child: RangeSlider(
                          values: const RangeValues(0, 0),
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {}),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                      padding: EdgeInsets.only(left: 27.h, right: 23.h),
                      child: _buildPrice(context,
                          price1: "lbl_10".tr, price2: "lbl_2k".tr)),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
          bottomNavigationBar: _buildSuggestItem(context),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildExploresWorkspace(BuildContext context) {
    return SizedBox(
      height: 432.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 11.v),
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v),
              decoration: AppDecoration.fillGray,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 335.v),
                      onTap: () {
                        onTapImgImage(context);
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 87.h, bottom: 335.v),
                      child: Text("msg_scanned_item_info".tr,
                          style: CustomTextStyles.titleMediumExtraBold))
                ],
              ),
            ),
          ),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle55,
              height: 337.v,
              width: 251.h,
              radius: BorderRadius.circular(32.h),
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 71.h)),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 47.v,
                  width: 145.h,
                  margin: EdgeInsets.only(right: 52.h, bottom: 28.v),
                  decoration: BoxDecoration(color: appTheme.gray10001)))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSuggestItem(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_suggest_item".tr,
        margin: EdgeInsets.only(left: 25.h, right: 24.h, bottom: 44.v));
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
    required String price1,
    required String price2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(price1,
            style: CustomTextStyles.titleMediumOnErrorContainer_1
                .copyWith(color: theme.colorScheme.onErrorContainer)),
        Text(price2,
            style: CustomTextStyles.titleMediumOnErrorContainer_1
                .copyWith(color: theme.colorScheme.onErrorContainer))
      ],
    );
  }

  /// Navigates to the devWorkspacesScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.devWorkspacesScreen,
    );
  }
}
