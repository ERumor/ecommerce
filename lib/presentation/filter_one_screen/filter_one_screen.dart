import '../filter_one_screen/widgets/laptops_item_widget.dart';
import '../filter_one_screen/widgets/logitech_item_widget.dart';
import 'bloc/filter_one_bloc.dart';
import 'models/filter_one_model.dart';
import 'models/laptops_item_model.dart';
import 'models/logitech_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/app_bar/appbar_title.dart';
import 'package:ecommerce/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FilterOneScreen extends StatelessWidget {
  const FilterOneScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterOneBloc>(
      create: (context) => FilterOneBloc(FilterOneState(
        filterOneModelObj: FilterOneModel(),
      ))
        ..add(FilterOneInitialEvent()),
      child: const FilterOneScreen(),
    );
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_price".tr,
                    style: CustomTextStyles.titleMediumGray600_1,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              SliderTheme(
                data: SliderThemeData(
                  trackShape: const RoundedRectSliderTrackShape(),
                  activeTrackColor: appTheme.deepOrange300,
                  inactiveTrackColor: appTheme.gray100,
                  thumbColor: appTheme.deepOrange300,
                  thumbShape: const RoundSliderThumbShape(),
                ),
                child: RangeSlider(
                  values: const RangeValues(
                    0,
                    0,
                  ),
                  min: 0.0,
                  max: 100.0,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 4.v),
              _buildPrice(context),
              SizedBox(height: 25.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_product_type".tr,
                    style: CustomTextStyles.titleMediumGray600_1,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildLaptops(context),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_brand".tr,
                    style: CustomTextStyles.titleMediumGray600_1,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildLogitech(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtons(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_filter_by".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgX,
          margin: EdgeInsets.fromLTRB(20.h, 11.v, 20.h, 24.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_10".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer_1,
          ),
          Text(
            "lbl_2k".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLaptops(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: BlocSelector<FilterOneBloc, FilterOneState, FilterOneModel?>(
          selector: (state) => state.filterOneModelObj,
          builder: (context, filterOneModelObj) {
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount: filterOneModelObj?.laptopsItemList.length ?? 0,
              itemBuilder: (context, index) {
                LaptopsItemModel model =
                    filterOneModelObj?.laptopsItemList[index] ??
                        LaptopsItemModel();
                return LaptopsItemWidget(
                  model,
                  changeCheckBox: (value) {
                    context
                        .read<FilterOneBloc>()
                        .add(LaptopsItemEvent(index: index, laptops: value));
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogitech(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<FilterOneBloc, FilterOneState, FilterOneModel?>(
        selector: (state) => state.filterOneModelObj,
        builder: (context, filterOneModelObj) {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: filterOneModelObj?.logitechItemList.length ?? 0,
            itemBuilder: (context, index) {
              LogitechItemModel model =
                  filterOneModelObj?.logitechItemList[index] ??
                      LogitechItemModel();
              return LogitechItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 25.h,
        bottom: 24.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 42.v,
            width: 150.h,
            text: "lbl_cancel".tr,
            buttonStyle: CustomButtonStyles.fillGrayTL8,
          ),
          CustomElevatedButton(
            height: 42.v,
            width: 150.h,
            text: "lbl_apply".tr,
            margin: EdgeInsets.only(left: 22.h),
          ),
        ],
      ),
    );
  }
}
