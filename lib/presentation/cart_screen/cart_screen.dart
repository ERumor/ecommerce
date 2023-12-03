import '../cart_screen/widgets/cart_item_widget.dart';
import 'bloc/cart_bloc.dart';
import 'models/cart_item_model.dart';
import 'models/cart_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
        create: (context) => CartBloc(CartState(cartModelObj: CartModel()))
          ..add(CartInitialEvent()),
        child: const CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Opacity(
          opacity: 0.9,
          child: SingleChildScrollView(
            child: Expanded(
              child: Container(
                height: 800,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 31.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerLeft,
                        onTap: () {
                          onTapImgImage(context);
                        }),
                    SizedBox(height: 19.v),
                    _buildFrameTwentyNine(context,
                        total: "lbl_your_cart".tr, price: "2 items".tr),
                    SizedBox(height: 25.v),
                    _buildCart(context),
                    Expanded(
                        child: Column(
                      children: [
                        const Spacer(),
                        _buildFrameTwentyNine(context,
                            total: "lbl_total".tr, price: "lbl_248_00".tr),
                        SizedBox(height: 39.v),
                        _buildProceedToCheckout(context),
                        SizedBox(height: 8.v),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCart(BuildContext context) {
    return BlocSelector<CartBloc, CartState, CartModel?>(
        selector: (state) => state.cartModelObj,
        builder: (context, cartModelObj) {
          return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 24.v);
              },
              itemCount: cartModelObj?.cartItemList.length ?? 0,
              itemBuilder: (context, index) {
                CartItemModel model =
                    cartModelObj?.cartItemList[index] ?? CartItemModel();
                return CartItemWidget(model);
              });
        });
  }

  /// BUTTON PROCEED CHECKOUT
  Widget _buildProceedToCheckout(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_proceed_to_checkout".tr,
        onPressed: () {
          onTapProceedToCheckout(context);
        });
  }

  /// Common widget
  Widget _buildFrameTwentyNine(
    BuildContext context, {
    required String total,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 3.v),
        child: Text(
          total,
          style: CustomTextStyles.titleMediumOnErrorContainer
              .copyWith(color: theme.colorScheme.onErrorContainer),
        ),
      ),
      Text(
        price,
        style:
            CustomTextStyles.titleLargeRed700.copyWith(color: appTheme.red700),
      ),
    ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapProceedToCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkoutScreen,
    );
  }
}
