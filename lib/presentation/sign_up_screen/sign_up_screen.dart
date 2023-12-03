import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/app_bar/appbar_subtitle.dart';
import 'package:ecommerce/widgets/app_bar/appbar_title_image.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:ecommerce/widgets/custom_outlined_button.dart';
import 'package:ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: const SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: const SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 23.h, right: 23.h, bottom: 5.v),
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_welcome_to".tr,
                                        style: theme.textTheme.titleLarge),
                                    TextSpan(
                                        text: "lbl_re".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary),
                                    TextSpan(
                                        text: "lbl_mote".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary),
                                    TextSpan(
                                        text: "lbl_ly_io".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 37.v),
                          _buildSignUpWithGoogle(context),
                          SizedBox(height: 20.v),
                          _buildSignUpWithFacebook(context),
                          SizedBox(height: 15.v),
                          Text("lbl_or".tr,
                              style: CustomTextStyles.labelLargeGray400_1),
                          SizedBox(height: 28.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_email".tr,
                                  style:
                                      CustomTextStyles.labelLargeBlack90002)),
                          SizedBox(height: 7.v),
                          _buildEmail(context),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_phone_number".tr,
                                  style:
                                      CustomTextStyles.labelLargeBlack90002)),
                          SizedBox(height: 7.v),
                          _buildInput(context),
                          SizedBox(height: 19.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_password".tr,
                                  style:
                                      CustomTextStyles.labelLargeBlack90002)),
                          SizedBox(height: 7.v),
                          _buildPassword(context),
                          SizedBox(height: 70.v),
                          _buildSignUp(context),
                          SizedBox(height: 75.v),
                          _buildConfirmation(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "lbl_hi_fella".tr,
                  margin: EdgeInsets.only(bottom: 1.v)),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgImage32,
                  margin: EdgeInsets.only(left: 12.h))
            ])));
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgRectangle115,
                height: 28.adaptSize,
                width: 28.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGray);
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage31,
                height: 28.adaptSize,
                width: 28.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGray);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_eg_jamesburnes_gmail_com".tr,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17.h, vertical: 19.v));
        });
  }

  /// Section Widget
  Widget _buildTwoHundredThirtyThree(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        width: 66.h,
        text: "lbl_233".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.bodyLargeGray600);
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildTwoHundredThirtyThree(context),
      Container(
          height: 56.v,
          width: 292.h,
          margin: EdgeInsets.only(left: 8.h),
          decoration: BoxDecoration(
              color: appTheme.gray10002,
              borderRadius: BorderRadius.circular(8.h)))
    ]);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return CustomTextFormField(
          controller: state.passwordController,
          textInputAction: TextInputAction.done,
          suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVuesaxLinearEyeslash,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 56.v),
          obscureText: state.isShowPassword);
    });
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(text: "lbl_sign_up".tr);
  }

  /// Section Widget
  Widget _buildConfirmation(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text("msg_don_t_have_an_account".tr,
              style: CustomTextStyles.titleMediumGray600_1)),
      GestureDetector(
          onTap: () {
            onTapTxtLogin(context);
          },
          child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_login2".tr,
                  style: CustomTextStyles.titleMediumRed700ExtraBold)))
    ]);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
