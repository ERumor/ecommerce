import 'bloc/filter_bloc.dart';
import 'models/filter_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_checkbox_button.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterBloc>(
        create: (context) =>
            FilterBloc(FilterState(filterModelObj: const FilterModel()))
              ..add(FilterInitialEvent()),
        child: const FilterScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: _buildAppBar(context),
            body: Container(
              width: 366.h,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_price".tr,
                          style: CustomTextStyles.titleMediumGray600_1),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  SliderTheme(
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
                  SizedBox(height: 4.v),
                  _buildNinetyThree(context),
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_product_type".tr,
                              style: CustomTextStyles.titleMediumGray600_1))),
                  SizedBox(height: 12.v),
                  _buildLaptops(context),
                  SizedBox(height: 17.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: _buildProduct(context)),
                  SizedBox(height: 21.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: _buildProduct1(context)),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: _buildProduct(context)),
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_brand".tr,
                              style: CustomTextStyles.titleMediumGray600_1))),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: _buildProduct(context)),
                  SizedBox(height: 19.v),
                  _buildLogitech(context),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: _buildProduct1(context)),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
            bottomNavigationBar: _buildButtons(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_filter_by".tr, margin: EdgeInsets.only(left: 24.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBiArrowsAngleExpand,
              margin: EdgeInsets.fromLTRB(20.h, 12.v, 20.h, 23.v),
              onTap: () {
                onTapBiArrowsAngleExpand(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h, right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("lbl_10".tr,
              style: CustomTextStyles.titleMediumOnErrorContainer_1),
          Text("lbl_2k".tr,
              style: CustomTextStyles.titleMediumOnErrorContainer_1)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLaptops(BuildContext context) {
    return BlocSelector<FilterBloc, FilterState, bool?>(
        selector: (state) => state.laptops,
        builder: (context, laptops) {
          return CustomCheckboxButton(
              width: 322.h,
              text: "lbl_laptops".tr,
              value: laptops,
              isRightCheck: true,
              onChange: (value) {
                context
                    .read<FilterBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildLogitech(BuildContext context) {
    return BlocSelector<FilterBloc, FilterState, bool?>(
        selector: (state) => state.logitech,
        builder: (context, logitech) {
          return CustomCheckboxButton(
              width: 322.h,
              text: "lbl_logitech".tr,
              value: logitech,
              isRightCheck: true,
              onChange: (value) {
                context
                    .read<FilterBloc>()
                    .add(ChangeCheckBox1Event(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h, right: 20.h, bottom: 24.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
              height: 42.v,
              width: 150.h,
              text: "lbl_cancel".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL8),
          CustomElevatedButton(
              height: 42.v,
              width: 150.h,
              text: "lbl_apply".tr,
              margin: EdgeInsets.only(left: 22.h))
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildProduct(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("lbl_chairs".tr, style: theme.textTheme.titleMedium),
        CustomImageView(
            imagePath: ImageConstant.imgSelection,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(top: 2.v))
      ],
    );
  }

  /// Common widget
  Widget _buildProduct1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("lbl_samsung".tr, style: theme.textTheme.titleMedium),
        Container(
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlineRed700,
            child: CustomImageView(
                imagePath: ImageConstant.imgCheck,
                height: 12.adaptSize,
                width: 12.adaptSize,
                alignment: Alignment.center))
      ],
    );
  }

  /// Navigates to the filterOneScreen when the action is triggered.
  onTapBiArrowsAngleExpand(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.filterOneScreen,
    );
  }
}
