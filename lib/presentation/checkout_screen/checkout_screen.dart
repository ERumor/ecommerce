import 'bloc/checkout_bloc.dart';
import 'models/checkout_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutBloc>(
        create: (context) =>
            CheckoutBloc(CheckoutState(checkoutModelObj: const CheckoutModel()))
              ..add(CheckoutInitialEvent()),
        child: const CheckoutScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CheckoutBloc, CheckoutState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: Opacity(
            opacity: 0.9,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 31.v),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 2.h)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_checkout".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_payment".tr,
                              style:
                                  CustomTextStyles.labelLargeGray500ExtraBold)),
                      SizedBox(height: 11.v),
                      _buildCard(context),
                      SizedBox(height: 16.v),
                      _buildCard1(context),
                      SizedBox(height: 39.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_shipping_information".tr,
                              style: CustomTextStyles.labelLargeExtraBold)),
                      SizedBox(height: 11.v),
                      _buildMap(context),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_address".tr,
                              style: CustomTextStyles.labelLargeGray400_1)),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_6391_elgin_st_celina".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_phone_number".tr,
                              style: CustomTextStyles.labelLargeGray400_1)),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_480_555_0103".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 76.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(indent: 31.h, endIndent: 31.h)),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildPrice(context,
                              shippingCost: "lbl_subtotal".tr,
                              price: "lbl_248_00".tr)),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildPrice(context,
                              shippingCost: "lbl_shipping_cost".tr,
                              price: "lbl_50_00".tr)),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: _buildPrice(context,
                              shippingCost: "lbl_total".tr,
                              price: "lbl_298_00".tr)),
                      SizedBox(height: 35.v),
                      CustomElevatedButton(
                          text: "msg_checkout_298_00".tr,
                          margin: EdgeInsets.only(left: 2.h),
                          onPressed: () {
                            onTapCheckout29800(context);
                          }),
                      SizedBox(height: 8.v)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineLightGreen
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle72,
              height: 12.v,
              width: 34.h,
              margin: EdgeInsets.only(top: 2.v, bottom: 4.v)),
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text("lbl_abbyn_bank".tr,
                  style: CustomTextStyles.labelLargeBlack90001)),
          CustomImageView(
              imagePath: ImageConstant.imgCard,
              height: 5.v,
              width: 32.h,
              margin: EdgeInsets.only(left: 17.h, top: 6.v, bottom: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_8910".tr,
                  style: CustomTextStyles.labelLargeGray500ExtraBold)),
          const Spacer(),
          Container(
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 2.v),
              decoration: BoxDecoration(
                  color: appTheme.lightGreen500,
                  borderRadius: BorderRadius.circular(7.h)))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle67,
              height: 20.v,
              width: 32.h),
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Text("lbl_haski_bank".tr,
                  style: CustomTextStyles.labelLargeBlack90001)),
          CustomImageView(
              imagePath: ImageConstant.imgCard,
              height: 5.v,
              width: 32.h,
              margin: EdgeInsets.only(left: 17.h, top: 7.v, bottom: 7.v)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_8910".tr,
                  style: CustomTextStyles.labelLargeGray500ExtraBold)),
          const Spacer(),
          Container(
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 3.v),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.h),
                  border: Border.all(color: appTheme.gray500, width: 1.h)))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.fillGray200
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup6), fit: BoxFit.cover)),
        child: Container(
          height: 127.v,
          width: 346.h,
          padding: EdgeInsets.only(top: 21.v, right: 110.h, bottom: 21.v),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: fs.Svg(ImageConstant.imgGroup89), fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVuesaxBoldLocation,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  alignment: Alignment.topRight),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: 12.v,
                      width: 32.h,
                      margin: EdgeInsets.only(top: 30.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray90051,
                          borderRadius: BorderRadius.circular(16.h))))
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
    required String shippingCost,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(shippingCost,
              style: CustomTextStyles.labelLargeGray500_1
                  .copyWith(color: appTheme.gray500))),
      Text(price,
          style: CustomTextStyles.titleMediumGray600
              .copyWith(color: appTheme.gray600))
    ]);
  }

  /// Navigates to the doneScreen when the action is triggered.
  onTapCheckout29800(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.doneScreen,
    );
  }
}
