import 'package:flutter/material.dart';
import 'bloc/home_bloc.dart';

import 'widgets/collections_widget.dart';
import 'widgets/laptop_widget.dart';
import '../home_screen/widgets/smartapplewatch_item_widget.dart';
import '../home_screen/widgets/workspaces_item_widget.dart';
import 'models/collections_model.dart';
import 'models/laptop_model.dart';
import 'models/home_model.dart';
import 'models/smartapplewatch_item_model.dart';
import 'models/workspaces_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:ecommerce/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:ecommerce/widgets/custom_floating_button.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: const HomeScreen());
  }

  ///BODY
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.whiteA70001.withOpacity(1),
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Opacity(
          opacity: 0.9,
          child: SingleChildScrollView(
            child: Container(
              height: 1400.v,
              width: 390.h,
              margin: EdgeInsets.only(
                left: 25.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 35.v),
                  _buildViewItem(context),
                  _buildWorkspaces(context),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: _buildTitleNew(context),
                  ),
                  SizedBox(height: 12.v),
                  _buildNewArrivals(context),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: _buildTitleLaptops(context),
                  ),
                  SizedBox(height: 12.v),
                  _buildLaptop(context),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: _buildTitleCollect(context),
                  ),
                  SizedBox(height: 12.v),
                  _buildCollections(context),
                  SizedBox(height: 35.v),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(context),
    );
  }

  /// APPBAR
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgRectangle7,
        margin: EdgeInsets.only(left: 24.h, top: 7.v),
      ),
      actions: [
        AppbarTrailingIconbutton(
            imagePath: ImageConstant.imgCart,
            margin: EdgeInsets.only(left: 24.h, top: 7.v, right: 7.h),
            onTap: () {
              onTapCart(context);
            }),
        AppbarTrailingIconbutton(
            imagePath: ImageConstant.imgWishlist,
            margin: EdgeInsets.only(left: 12.h, top: 7.v, right: 31.h),
            onTap: () {
              onTapWishlist(context);
            }),
      ],
    );
  }

  /// OFFICE CHAIR
  Widget _buildViewItem(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 251.v,
        width: 366.h,
        decoration: AppDecoration.fillWhiteA,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "lbl_popular_now".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 246.v,
                width: 366.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 185.v,
                        width: 338.h,
                        margin: EdgeInsets.only(bottom: 4.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(0.03),
                          borderRadius: BorderRadius.circular(30.h),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15.v),
                        padding: EdgeInsets.all(23.h),
                        decoration: AppDecoration.fillSecondaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder32),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 175.h,
                              child: Text("msg_adjustable_office".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleLargeGray100),
                            ),
                            SizedBox(height: 6.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("msg_hughlan_workspaces".tr,
                                      style:
                                          CustomTextStyles.labelLargeGray500_1),
                                ),
                                Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 8.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray500,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_4_8".tr,
                                    style: CustomTextStyles.labelLargeGray300,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStar,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 1.v,
                                    bottom: 3.v,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 18.v),
                            Row(children: [
                              CustomElevatedButton(
                                  height: 42.v,
                                  width: 111.h,
                                  text: "lbl_view_item".tr,
                                  onPressed: () {
                                    onTapViewItem(context);
                                  }),
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: CustomIconButton(
                                  height: 42.adaptSize,
                                  width: 42.adaptSize,
                                  padding: EdgeInsets.all(11.h),
                                  decoration: IconButtonStyleHelper.fillGray,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgCartGray500,
                                  ),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 246.v,
                      width: 129.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 24.h),
                      fit: BoxFit.fill,
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

  /// WORKSPACES
  Widget _buildWorkspaces(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 20.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                onTapHeader(context);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 13.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_workspaces".tr,
                        style: theme.textTheme.titleLarge),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v, bottom: 7.v),
                      child: Text(
                        "lbl_see_more".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 5.v,
                        bottom: 7.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              height: 178.v,
              child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                selector: (state) => state.homeModelObj,
                builder: (context, homeModelObj) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 21.h);
                      },
                      itemCount: homeModelObj?.workspacesItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        WorkspacesItemModel model =
                            homeModelObj?.workspacesItemList[index] ??
                                WorkspacesItemModel();
                        return WorkspacesItemWidget(model);
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// NEW ARRIVALS
  Widget _buildNewArrivals(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 12.v);
                  },
                  itemCount: homeModelObj?.smartapplewatchItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SmartapplewatchItemModel model =
                        homeModelObj?.smartapplewatchItemList[index] ??
                            SmartapplewatchItemModel();
                    return SmartapplewatchItemWidget(model);
                  });
            }),
      ),
    );
  }

  /// lAPTOPS
  Widget _buildLaptop(BuildContext context) {
    return SizedBox(
      height: 190.v,
      child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
          selector: (state) => state.homeModelObj,
          builder: (context, homeModelObj) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 17.h);
                },
                itemCount: homeModelObj?.laptopItemList.length ?? 0,
                itemBuilder: (context, index) {
                  LaptopItemModel model =
                      homeModelObj?.laptopItemList[index] ?? LaptopItemModel();
                  return LaptopItemWidget(model);
                });
          }),
    );
  }

  /// COLLECTIONS
  Widget _buildCollections(BuildContext context) {
    return SizedBox(
      height: 190.v,
      child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
          selector: (state) => state.homeModelObj,
          builder: (context, homeModelObj) {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 17.h);
                },
                itemCount: homeModelObj?.collectionsItemList.length ?? 0,
                itemBuilder: (context, index) {
                  CollectionsItemModel model =
                      homeModelObj?.collectionsItemList[index] ??
                          CollectionsItemModel();
                  return CollectionsItemWidget(model);
                });
          }),
    );
  }

  /// BOTTOM CART
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 70,
      width: 70,
      backgroundColor: appTheme.black900,
      child: CustomImageView(
        imagePath: ImageConstant.imgCartMain,
        height: 35.0.v,
        width: 35.0.h,
      ),
    );
  }

  /// TITLE LAPTOPS
  Widget _buildTitleLaptops(BuildContext context) {
    return Row(
      children: [
        Text("lbl_laptops".tr, style: CustomTextStyles.titleMediumBlack18),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Text(
            "lbl_view".tr,
            style: theme.textTheme.labelLarge,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// TITLE NEW ARRIVALS
  Widget _buildTitleNew(BuildContext context) {
    return Row(
      children: [
        Text("lbl_new_arrivals".tr, style: CustomTextStyles.titleMediumBlack18),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Text(
            "lbl_see_more".tr,
            style: theme.textTheme.labelLarge,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// TITLE COLLECTIONS
  Widget _buildTitleCollect(BuildContext context) {
    return Row(
      children: [
        Text("msg_trending_collections".tr,
            style: CustomTextStyles.titleMediumBlack18),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Text(
            "lbl_view".tr,
            style: theme.textTheme.labelLarge,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapCart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appNavigationScreen,
    );
  }

  /// Navigates to the ordersScreen when the action is triggered.
  onTapWishlist(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ordersScreen,
    );
  }

  /// Navigates to the viewItemScreen when the action is triggered.
  onTapViewItem(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.viewItemScreen,
    );
  }

  /// Navigates to the workspacesTabContainerScreen when the action is triggered.
  onTapHeader(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workspacesTabContainerScreen,
    );
  }
}
