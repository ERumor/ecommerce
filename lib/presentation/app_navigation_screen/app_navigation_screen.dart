import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: const AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: const AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboard".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Workspaces - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.workspacesTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Dev.workspaces".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.devWorkspacesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "View item".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.viewItemScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Cart".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Done".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.doneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Scanned item".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.scannedItemScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Checkout".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.checkoutScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Orders".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ordersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Filter One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filterOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Filter".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.filterScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: const Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: const Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
