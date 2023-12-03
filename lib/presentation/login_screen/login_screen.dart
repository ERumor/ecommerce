import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:ecommerce/widgets/custom_outlined_button.dart';
import 'package:ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) =>
            LoginBloc(LoginState(loginModelObj: const LoginModel()))
              ..add(LoginInitialEvent()),
        child: const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Opacity(
          opacity: 0.9,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 23.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 134.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("lbl_hi_fella".tr,
                                    style:
                                        CustomTextStyles.titleMediumGray600)),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage32,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 12.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_welcome_back".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 45.v),
                    _buildLoginWithGoogle(context),
                    SizedBox(height: 20.v),
                    _buildLoginWithFacebook(context),
                    SizedBox(height: 27.v),
                    Text("lbl_or".tr,
                        style: CustomTextStyles.labelLargeGray400_1),
                    SizedBox(height: 31.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "lbl_email".tr,
                          style: CustomTextStyles.labelLargeBlack90002,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "lbl_password".tr,
                          style: CustomTextStyles.labelLargeBlack90002,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildPassword(context),
                    SizedBox(height: 42.v),
                    _buildLogin(context),
                    SizedBox(height: 77.v),
                    _buildNinetySix(context)
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
  Widget _buildLoginWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_login_with_google".tr,
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      leftIcon: Container(
          margin: EdgeInsets.only(right: 30.h),
          child: CustomImageView(
              imagePath: ImageConstant.imgRectangle115,
              height: 28.adaptSize,
              width: 28.adaptSize)),
      buttonStyle: CustomButtonStyles.outlineGray,
    );
  }

  /// Section Widget
  Widget _buildLoginWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_login_with_facebook".tr,
      margin: EdgeInsets.only(left: 3.h, right: 2.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage31,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: BlocSelector<LoginBloc, LoginState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "msg_eg_jamesburnes_gmail_com".tr,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v));
          }),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController,
            textInputAction: TextInputAction.done,
            suffix: InkWell(
              onTap: () {
                context.read<LoginBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 14.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVuesaxLinearEyeslash,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 56.v),
            obscureText: state.isShowPassword);
      }),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login2".tr,
        margin: EdgeInsets.only(left: 3.h, right: 2.h),
        onPressed: () {
          onTapLogin(context);
        });
  }

  /// Section Widget
  Widget _buildNinetySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("msg_forgot_password".tr,
              style: CustomTextStyles.titleMediumGray600_1),
          Text("lbl_sign_up".tr,
              style: CustomTextStyles.titleMediumRed700ExtraBold)
        ],
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
