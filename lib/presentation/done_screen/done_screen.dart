import 'bloc/done_bloc.dart';
import 'models/done_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<DoneBloc>(
        create: (context) =>
            DoneBloc(DoneState(doneModelObj: const DoneModel()))
              ..add(DoneInitialEvent()),
        child: const DoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DoneBloc, DoneState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: Opacity(
            opacity: 0.9,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 39.v),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                    children: [
                      SizedBox(height: 31.v),
                      Text("lbl_all_done".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 145.v),
                      _buildFortySeven(context),
                      SizedBox(height: 270.v),
                      CustomElevatedButton(
                          text: "lbl_go_to_orders".tr,
                          margin: EdgeInsets.symmetric(horizontal: 8.h),
                          onPressed: () {
                            onTapGoToOrders(context);
                          }),
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
  Widget _buildFortySeven(BuildContext context) {
    return SizedBox(
      height: 282.v,
      width: 382.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgDayflowAbstract,
              height: 282.v,
              width: 382.h,
              alignment: Alignment.center),
          CustomImageView(
            imagePath: ImageConstant.imgBox1,
            height: 154.adaptSize,
            width: 154.adaptSize,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 57.v),
          ),
        ],
      ),
    );
  }

  /// Navigates to the ordersScreen when the action is triggered.
  onTapGoToOrders(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.ordersScreen);
  }
}
