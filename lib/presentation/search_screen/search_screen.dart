import '../search_screen/widgets/eightytwo_item_widget.dart';
import '../search_screen/widgets/framenineteen3_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/eightytwo_item_model.dart';
import 'models/framenineteen3_item_model.dart';
import 'models/search_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/core/utils/validation_functions.dart';
import 'package:ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.whiteA70001.withOpacity(1),
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Opacity(
              opacity: 0.9,
              child: Container(
                height: 1000.v,
                width: 390.h,
                margin: EdgeInsets.only(left: 23.h, right: 23.h, top: 10.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: BlocSelector<SearchBloc, SearchState,
                                      TextEditingController?>(
                                  selector: (state) => state.nameController,
                                  builder: (context, nameController) {
                                    return CustomTextFormField(
                                        controller: nameController,
                                        hintText: "msg_search_product_name".tr,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                            30.h,
                                            15.v,
                                            15.h,
                                            15.v,
                                          ),
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVuesaxLinearSetting4,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                          ),
                                        ),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 50.v),
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "err_msg_please_enter_valid_text"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  }),
                            ),
                            SizedBox(height: 19.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_recent".tr,
                                style:
                                    CustomTextStyles.labelLargeGray500ExtraBold,
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: _buildRecentSearch(context,
                                  product: "msg_phone_tripod_stand".tr),
                            ),
                            SizedBox(height: 13.v),
                            _buildRecentSearch(context,
                                product: "lbl_fitness_watch".tr),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: _buildRecentSearch(context,
                                  product: "msg_usb_microphone_for".tr),
                            ),
                            SizedBox(height: 47.v),
                            Divider(indent: 24.h, endIndent: 30.h),
                            SizedBox(height: 315.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "msg_what_people_are".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(height: 13.v),
                            _buildEightyTwo(context),
                            SizedBox(height: 24.v),
                            _buildContent(context)
                          ],
                        ),
                      ),
                    ),
                    _buildBrowseHistory(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// APPBAR
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
          margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v),
          onTap: () {
            onTapImage(context);
          }),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_search".tr,
      ),
    );
  }

  /// WHAT PEOPLE SEARCHING MODEL
  Widget _buildEightyTwo(BuildContext context) {
    return BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
          return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount: searchModelObj?.eightytwoItemList.length ?? 0,
              itemBuilder: (context, index) {
                EightytwoItemModel model =
                    searchModelObj?.eightytwoItemList[index] ??
                        EightytwoItemModel();
                return EightytwoItemWidget(model);
              });
        });
  }

  /// WHAT PEOPLE SEARCHING THINGS
  Widget _buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: const EdgeInsets.all(0),
            color: appTheme.gray100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Container(
              height: 86.v,
              width: 105.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage142,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWishlistWhiteA70001,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h, bottom: 10.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("msg_canon_eo5_1500l".tr,
                    style: theme.textTheme.titleMedium),
                SizedBox(height: 4.v),
                Container(
                  width: 149.h,
                  margin: EdgeInsets.only(right: 7.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("msg_jodde_electronics".tr,
                          style: CustomTextStyles.labelLargeGray500_1),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 6.v),
                        decoration: BoxDecoration(
                          color: appTheme.gray500,
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                      ),
                      Text("lbl_4_8".tr, style: theme.textTheme.labelLarge),
                      CustomImageView(
                          imagePath: ImageConstant.imgStar,
                          height: 12.adaptSize,
                          width: 12.adaptSize)
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Text("lbl_319_00".tr,
                    style: CustomTextStyles.titleMediumRed700ExtraBold)
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// YOUR BROWSING HISTORY
  Widget _buildBrowseHistory(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 299.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_your_browsing_history".tr,
                      style: CustomTextStyles.titleMediumBlack18),
                  const Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 5.v),
                      child: Text("lbl_view".tr,
                          style: theme.textTheme.labelLarge)),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 5.v))
                ],
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              height: 190.v,
              child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
                  selector: (state) => state.searchModelObj,
                  builder: (context, searchModelObj) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 17.h);
                        },
                        itemCount:
                            searchModelObj?.framenineteen3ItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          Framenineteen3ItemModel model =
                              searchModelObj?.framenineteen3ItemList[index] ??
                                  Framenineteen3ItemModel();
                          return Framenineteen3ItemWidget(model);
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }

  /// RECENT SEARCH
  Widget _buildRecentSearch(
    BuildContext context, {
    required String product,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          product,
          style: CustomTextStyles.bodyLargeBlack90002.copyWith(
            color: appTheme.black90002,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgX,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
