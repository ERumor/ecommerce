import '../dev_workspaces_screen/widgets/devworkspaces_item_widget.dart';
import 'bloc/dev_workspaces_bloc.dart';
import 'models/dev_workspaces_model.dart';
import 'models/devworkspaces_item_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/widgets/custom_elevated_button.dart';
import 'package:ecommerce/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/presentation/scanning_dialog/scanning_dialog.dart';

class DevWorkspacesScreen extends StatelessWidget {
  const DevWorkspacesScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<DevWorkspacesBloc>(
        create: (context) => DevWorkspacesBloc(
            DevWorkspacesState(devWorkspacesModelObj: DevWorkspacesModel()))
          ..add(DevWorkspacesInitialEvent()),
        child: const DevWorkspacesScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001.withOpacity(0.67),
            body: Opacity(
              opacity: 0.9,
              child: SizedBox(
                width: double.maxFinite,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                    children: [
                      SizedBox(height: 31.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgImage(context);
                          }),
                      SizedBox(height: 20.v),
                      _devWorkspace(context),
                      SizedBox(height: 22.v),
                      _buildSearch(context),
                      SizedBox(height: 23.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_suggested_items".tr,
                              style: CustomTextStyles.labelLargeExtraBold)),
                      SizedBox(height: 13.v),
                      _buildDevworkspaces(context)
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// DEV WORKSPACE
  Widget _devWorkspace(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_developer_workspace".tr,
                  style: theme.textTheme.titleLarge),
              SizedBox(height: 4.v),
              Text("msg_16_suggested_items".tr,
                  style: CustomTextStyles.labelLargeExtraBold)
            ],
          ),
          CustomElevatedButton(
              height: 31.v,
              width: 84.h,
              text: "lbl_suggest".tr,
              margin: EdgeInsets.only(bottom: 20.v),
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 2.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVuesaxLinearAdd,
                      height: 16.adaptSize,
                      width: 16.adaptSize)),
              buttonStyle: CustomButtonStyles.fillDeepOrange,
              buttonTextStyle: CustomTextStyles.labelLargeRed700_1,
              onPressed: () {
                onTapSuggest(context);
              }),
        ]);
  }

  /// SEARCH
  Widget _buildSearch(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.v),
      decoration: AppDecoration.outlineBlueGray
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 19.h, top: 10.v, bottom: 9.v),
            child: Text(
              "msg_what_are_you_looking".tr,
              style: CustomTextStyles.bodyLargeBluegray400,
            ),
          ),
          Container(
            height: 42.v,
            width: 39.h,
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: CustomImageView(
                imagePath: ImageConstant.imgVuesaxLinearSetting4,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.centerLeft),
          ),
        ],
      ),
    );
  }

  /// SUGGESTED ITEMS
  Widget _buildDevworkspaces(BuildContext context) {
    return Expanded(
      child: BlocSelector<DevWorkspacesBloc, DevWorkspacesState,
          DevWorkspacesModel?>(
        selector: (state) => state.devWorkspacesModelObj,
        builder: (context, devWorkspacesModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 193.v,
                crossAxisCount: 2,
                mainAxisSpacing: 23.h,
                crossAxisSpacing: 23.h,
              ),
              physics: const BouncingScrollPhysics(),
              itemCount:
                  devWorkspacesModelObj?.devworkspacesItemList.length ?? 0,
              itemBuilder: (context, index) {
                DevworkspacesItemModel model =
                    devWorkspacesModelObj?.devworkspacesItemList[index] ??
                        DevworkspacesItemModel();
                return DevworkspacesItemWidget(model);
              });
        },
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

  /// Navigates to the workspacesTabContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workspacesTabContainerScreen,
    );
  }

  /// Displays a dialog with the [ScanningDialog] content.
  onTapSuggest(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: ScanningDialog.builder(context),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }
}
