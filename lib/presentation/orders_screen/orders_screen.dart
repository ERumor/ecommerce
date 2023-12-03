import 'package:flutter/material.dart';

import '../orders_screen/widgets/orders_item_widget.dart';
import 'bloc/orders_bloc.dart';
import 'models/orders_item_model.dart';
import 'models/orders_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/core/utils/validation_functions.dart';
import 'package:ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_floating_button.dart';
import 'package:ecommerce/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersBloc>(
        create: (context) =>
            OrdersBloc(OrdersState(ordersModelObj: OrdersModel()))
              ..add(OrdersInitialEvent()),
        child: OrdersScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Opacity(
            opacity: 0.9,
            child: Container(
              width: 366.h,
              margin: EdgeInsets.only(top: 8.v, bottom: 8.v, left: 23.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [_buildFortyFive(context), _buildOrders(context)],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
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
      title: AppbarSubtitleOne(text: "lbl_your_orders".tr),
    );
  }

  /// SEARCH FOR ORDERS
  Widget _buildName(BuildContext context) {
    return BlocSelector<OrdersBloc, OrdersState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
              controller: nameController,
              hintText: "msg_search_product_name".tr,
              textInputAction: TextInputAction.done,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVuesaxLinearSetting4,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 50.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: _buildName(context),
      ),
    );
  }

  /// ORDERS
  Widget _buildOrders(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 70.v),
        child: BlocSelector<OrdersBloc, OrdersState, OrdersModel?>(
            selector: (state) => state.ordersModelObj,
            builder: (context, ordersModelObj) {
              return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 24.v);
                  },
                  itemCount: ordersModelObj?.ordersItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    OrdersItemModel model =
                        ordersModelObj?.ordersItemList[index] ??
                            OrdersItemModel();
                    return OrdersItemWidget(model);
                  });
            }),
      ),
    );
  }

  /// CART
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

  /// Navigates to the homeScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
