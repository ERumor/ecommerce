import '../view_item_screen/widgets/fifty_item_widget.dart';
import 'bloc/view_item_bloc.dart';
import 'models/fifty_item_model.dart';
import 'models/view_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:ecommerce/widgets/custom_floating_button.dart';
import 'package:ecommerce/widgets/custom_icon_button.dart';
import 'package:ecommerce/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewItemScreen extends StatelessWidget {
  const ViewItemScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<ViewItemBloc>(
        create: (context) =>
            ViewItemBloc(ViewItemState(viewItemModelObj: ViewItemModel()))
              ..add(ViewItemInitialEvent()),
        child: const ViewItemScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.whiteA70001.withOpacity(1),
      body: SafeArea(
        child: Opacity(
          opacity: 0.9,
          child: SingleChildScrollView(
            child: Opacity(
              opacity: 0.9,
              child: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildArrowLeft(context),
                            SizedBox(height: 23.v),
                            _chairDescription(context),
                            SizedBox(height: 21.v),
                            Container(
                              width: 362.h,
                              margin: EdgeInsets.only(left: 23.h, right: 28.h),
                              child: Text(
                                "msg_hughlan_ergonomic2".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            SizedBox(height: 21.v)
                          ],
                        ),
                      ),
                    ),
                    _itemCanBeUsed(context),
                    _addToCart(context),
                    _relatedItem(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(context),
    );
  }

  /// BACK TO HOME_SCREEN
  Widget _buildArrowLeft(BuildContext context) {
    return SizedBox(
      height: 421.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<ViewItemBloc, ViewItemState>(builder: (context, state) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                    height: 421.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      state.sliderIndex = index;
                    }),
                itemCount: state.viewItemModelObj?.fiftyItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  FiftyItemModel model =
                      state.viewItemModelObj?.fiftyItemList[index] ??
                          FiftyItemModel();
                  return FiftyItemWidget(model);
                });
          }),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<ViewItemBloc, ViewItemState>(
              builder: (context, state) {
                return Container(
                  height: 8.v,
                  margin: EdgeInsets.only(bottom: 25.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.viewItemModelObj?.fiftyItemList.length ?? 0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.gray400,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// OFFICE CHAIR DESCRIPTION
  Widget _chairDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.h, right: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                width: 232.h,
                child: Text(
                  "msg_hughlan_ergonomic".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 231.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "msg_hughlan_workspaces".tr,
                        style: CustomTextStyles.labelLargeGray500_1,
                      ),
                    ),
                    Container(
                      height: 3.adaptSize,
                      width: 3.adaptSize,
                      margin: EdgeInsets.only(top: 7.v, bottom: 8.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                    Text("lbl_4_8".tr,
                        style: CustomTextStyles.labelLargePrimaryContainer),
                    Padding(
                      padding: EdgeInsets.only(top: 1.v, bottom: 3.v),
                      child: const CustomRatingBar(initialRating: 5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5.v),
            padding: EdgeInsets.all(14.h),
            decoration: AppDecoration.fillGray50,
            child: Column(
              children: [
                Text("lbl_113".tr,
                    style: CustomTextStyles.titleLargePrimaryContainer),
                SizedBox(height: 3.v),
                Text("lbl_7_off".tr,
                    style: CustomTextStyles.labelLargePrimaryContainer)
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// WORKSPACES ITEM CAN BE USED
  Widget _itemCanBeUsed(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
            padding: EdgeInsets.only(bottom: 112.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_workspaces_item".tr,
                      style: CustomTextStyles.labelLargeBlack90001Black),
                  SizedBox(height: 15.v),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Expanded(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                  Container(
                                      padding: EdgeInsets.all(8.h),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage13,
                                              height: 65.v,
                                              width: 68.h,
                                              radius:
                                                  BorderRadius.circular(8.h),
                                              fit: BoxFit.fill,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, bottom: 21.v),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("lbl_developer".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumBlack90002),
                                                      SizedBox(height: 3.v),
                                                      Text(
                                                          "msg_21_suggested_items"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .labelLargeGray500_1)
                                                    ]))
                                          ])),
                                  Container(
                                      margin: EdgeInsets.only(right: 8.h),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 7.v),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage15,
                                                height: 65.v,
                                                width: 68.h,
                                                radius:
                                                    BorderRadius.circular(8.h)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, bottom: 44.v),
                                                child: Text("lbl_marketer".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack90002))
                                          ]))
                                ])),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26.h, vertical: 29.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      Text("msg_19_suggested_items".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray500_1)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 21.h),
                                child: _buildFrameSix(context)),
                            Padding(
                                padding: EdgeInsets.only(left: 21.h),
                                child: _buildFrameSix(context)),
                            Container(
                                width: 219.h,
                                margin: EdgeInsets.only(left: 21.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.h, vertical: 7.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage139,
                                          height: 65.v,
                                          width: 68.h,
                                          radius: BorderRadius.circular(8.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, bottom: 22.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_creative".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack90002),
                                                SizedBox(height: 5.v),
                                                Text("msg_8_suggested_items".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeGray500_1)
                                              ]))
                                    ]))
                          ])))
                ])));
  }

  /// RELATED ITEM
  Widget _relatedItem(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_related_item".tr,
              style: CustomTextStyles.labelLargeBlack90001Black),
          SizedBox(height: 15.v),
          Expanded(
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 11.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.h, vertical: 2.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage1482x72,
                                height: 82.v,
                                width: 72.h,
                                margin: EdgeInsets.only(left: 26.h)),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 6.h, top: 9.v, bottom: 41.v),
                              child: CustomIconButton(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(8.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgHeartBlack90001,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(left: 12.h),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Column(children: [
                                      Text("msg_burbun_office_chair".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      SizedBox(
                                          width: 145.h,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("msg_orcc_office_app".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeGray500_1),
                                                Container(
                                                    height: 3.adaptSize,
                                                    width: 3.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 6.v),
                                                    decoration: BoxDecoration(
                                                        color: appTheme.gray500,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    1.h))),
                                                Text("lbl_4_2".tr,
                                                    style: theme
                                                        .textTheme.labelLarge),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgStar,
                                                    height: 12.adaptSize,
                                                    width: 12.adaptSize)
                                              ])),
                                      SizedBox(height: 12.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("lbl_301_00".tr,
                                              style: CustomTextStyles
                                                  .titleMediumRed700ExtraBold))
                                    ]),
                                    Padding(
                                        padding: EdgeInsets.only(left: 220.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("msg_markus_office_chair".tr,
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 4.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "msg_markus_electronics"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .labelLargeGray500_1),
                                                    Container(
                                                        height: 3.adaptSize,
                                                        width: 3.adaptSize,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 6.v),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray500,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.h))),
                                                    Text("lbl_4_8".tr,
                                                        style: theme.textTheme
                                                            .labelLarge),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgStar,
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize)
                                                  ]),
                                              SizedBox(height: 12.v),
                                              Text("lbl_432_00".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumRed700ExtraBold)
                                            ]))
                                  ]))))
                    ])),
                Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.all(11.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                          child: Container(
                            width: 150.h,
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(flex: 17),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage1472x65,
                                    height: 72.v,
                                    width: 65.h),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, top: 4.v, bottom: 36.v),
                                  child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimary,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgHeartBlack90001),
                                  ),
                                ),
                                const Spacer(flex: 82),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.v, bottom: 36.v),
                                  child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimary,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgHeartBlack90001),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Text("msg_adjustable_chair".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 4.v),
                      Row(
                        children: [
                          Text("lbl_office_home".tr,
                              style: CustomTextStyles.labelLargeGray500_1),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: appTheme.gray500,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("lbl_4_5".tr,
                                style: theme.textTheme.labelLarge),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgStar,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(left: 4.h),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      Text("lbl_319_00".tr,
                          style: CustomTextStyles.titleMediumRed700ExtraBold)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 92.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle19,
                        height: 86.v,
                        width: 13.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ADD TO CART
  Widget _addToCart(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 810.v),
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v),
        decoration: AppDecoration.gradientWhiteAToWhiteA70001,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomElevatedButton(
                  text: "lbl_add_to_cart".tr,
                  margin: EdgeInsets.only(bottom: 12.v),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  onPressed: () {
                    onTapAddToCart(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  /// CART
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 60,
      width: 60,
      backgroundColor: appTheme.whiteA70001,
      decoration: FloatingButtonStyleHelper.fillWhiteA,
      child: CustomImageView(
          imagePath: ImageConstant.imgVuesaxLinearHeart,
          height: 30.0.v,
          width: 30.0.h),
    );
  }

  /// PHOTOGRAPHER
  Widget _buildFrameSix(BuildContext context) {
    return Container(
      width: 219.h,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage138,
            height: 65.v,
            width: 68.h,
            radius: BorderRadius.circular(8.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h, bottom: 21.v),
            child: Column(
              children: [
                Text("lbl_photographer".tr,
                    style: CustomTextStyles.titleMediumBlack90002),
                SizedBox(height: 3.v),
                Text("msg_12_suggested_items".tr,
                    style: CustomTextStyles.labelLargeGray500_1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapAddToCart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cartScreen,
    );
  }
}
