import 'bloc/onboard_bloc.dart';
import 'models/onboard_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardBloc>(
        create: (context) =>
            OnboardBloc(OnboardState(onboardModelObj: const OnboardModel()))
              ..add(OnboardInitialEvent(
                loginButtonPressed: false,
              )),
        child: const OnboardScreen());
  }

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  bool _isLoadingBrowse = false;
  bool _isLoadingLogIn = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardBloc, OnboardState>(builder: (context, state) {
      return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA70001,
        body: SafeArea(
          child: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              image: DecorationImage(
                image: AssetImage(ImageConstant.imgOnboard),
                fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [const Spacer(), _buildBrowseShop(context)],
              ),
            ),
          ),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildBrowseShop(BuildContext context) {
    return SizedBox(
      height: 286.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 28.v),
              decoration: AppDecoration.gradientWhiteAToWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 77.v),
                  if (_isLoadingBrowse)
                    const CircularProgressIndicator() // Show the loading indicator when _isLoading is true
                  else
                    CustomElevatedButton(
                      text: "lbl_browse_shop".tr,
                      onPressed: () {
                        onTapBrowseShop(context);
                      },
                    ),
                  SizedBox(height: 21.v),
                  if (_isLoadingLogIn)
                    const CircularProgressIndicator() // Show the loading indicator when _isLoading is true
                  else
                    GestureDetector(
                      onTap: () {
                        onTapTxtLogIn(context);
                      },
                      child: Text(
                        "lbl_log_in".tr,
                        style: CustomTextStyles.titleMediumWhiteA70001,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 31.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_welcome".tr,
                    style: CustomTextStyles.labelLargePrimaryBlack,
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_remotely_io".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(
                    width: 336.h,
                    child: Text(
                      "msg_we_serve_you_with".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumGray300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  void onTapBrowseShop(BuildContext context) async {
    setState(() {
      _isLoadingBrowse =
          true; // Set _isLoading to true when the button is pressed
    });

    await Future.delayed(
        const Duration(seconds: 2)); // Simulate a loading delay

    await NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );

    setState(() {
      _isLoadingBrowse =
          false; // Set _isLoading to false after the transition is completed
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  void onTapTxtLogIn(BuildContext context) async {
    BlocProvider.of<OnboardBloc>(context)
        .add(OnboardInitialEvent(loginButtonPressed: true));

    setState(() {
      _isLoadingLogIn =
          true; // Set _isLoading to true when the button is pressed
    });

    await Future.delayed(
        const Duration(seconds: 2)); // Simulate a loading delay

    await NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );

    setState(() {
      _isLoadingLogIn =
          false; // Set _isLoading to false after the transition is completed
    });
  }
}
