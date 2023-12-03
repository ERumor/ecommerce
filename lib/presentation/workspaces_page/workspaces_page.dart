import '../workspaces_page/widgets/developer_item_widget.dart';
import '../workspaces_page/widgets/framenineteen2_item_widget.dart';
import '../workspaces_page/widgets/smartapplewatch1_item_widget.dart';
import 'bloc/workspaces_bloc.dart';
import 'models/developer_item_model.dart';
import 'models/framenineteen2_item_model.dart';
import 'models/smartapplewatch1_item_model.dart';
import 'models/workspaces_model.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WorkspacesPage extends StatefulWidget {
  const WorkspacesPage({super.key});

  @override
  WorkspacesPageState createState() => WorkspacesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<WorkspacesBloc>(
      create: (context) => WorkspacesBloc(WorkspacesState(
        workspacesModelObj: WorkspacesModel(),
      ))
        ..add(WorkspacesInitialEvent()),
      child: const WorkspacesPage(),
    );
  }
}

class WorkspacesPageState extends State<WorkspacesPage>
    with AutomaticKeepAliveClientMixin<WorkspacesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(context),
                        SizedBox(height: 13.v),
                        _buildFrameNineteen(context),
                        SizedBox(height: 32.v),
                        _buildPeople(context),
                        SizedBox(height: 32.v),
                        Text(
                          "msg_based_on_your_bowsing".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 14.v),
                        _buildSmartAppleWatch(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_what".tr,
                  style: CustomTextStyles.titleMediumBlack18_1,
                ),
                TextSpan(
                  text: "msg_youtubers_search".tr,
                  style: CustomTextStyles.titleMediumRed700,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_see_more".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 5.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNineteen(BuildContext context) {
    return SizedBox(
      height: 190.v,
      child: BlocSelector<WorkspacesBloc, WorkspacesState, WorkspacesModel?>(
        selector: (state) => state.workspacesModelObj,
        builder: (context, workspacesModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 17.h,
              );
            },
            itemCount: workspacesModelObj?.framenineteen2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Framenineteen2ItemModel model =
                  workspacesModelObj?.framenineteen2ItemList[index] ??
                      Framenineteen2ItemModel();
              return Framenineteen2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPeople(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_people_search_for".tr,
            style: CustomTextStyles.labelLargeBlack90001,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 118.h),
            child:
                BlocSelector<WorkspacesBloc, WorkspacesState, WorkspacesModel?>(
              selector: (state) => state.workspacesModelObj,
              builder: (context, workspacesModelObj) {
                return ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 12.v,
                    );
                  },
                  itemCount: workspacesModelObj?.developerItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    DeveloperItemModel model =
                        workspacesModelObj?.developerItemList[index] ??
                            DeveloperItemModel();
                    return DeveloperItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSmartAppleWatch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.h),
      child: BlocSelector<WorkspacesBloc, WorkspacesState, WorkspacesModel?>(
        selector: (state) => state.workspacesModelObj,
        builder: (context, workspacesModelObj) {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount: workspacesModelObj?.smartapplewatch1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Smartapplewatch1ItemModel model =
                  workspacesModelObj?.smartapplewatch1ItemList[index] ??
                      Smartapplewatch1ItemModel();
              return Smartapplewatch1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
